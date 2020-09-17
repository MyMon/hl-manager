function createXMLHttpRequest(){
    var req;
    if(window.XMLHttpRequest){
        //兼容非IE  并且兼容 IE7以上的浏览器
        req = new XMLHttpRequest();
    }else if(window.ActiveXObject){
        //在 Internet Explorer 5.5 及其后版本中可用
        try {
            req = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (e) {
            //在 Internet Explorer 6 中可用
            req = new ActiveXObject("Msxml2.XMLHTTP");
        }
    }
    
    return req;
}

/*
参数介绍：
method：提交方式（get,post）
url:请求的路径
param：需要传递的参数
async:是否一步
type:返回值类型（xml,json，默认字符串）
fn200：是一个function 处理请求成功后的的事情
fn404:是一个function 处理请求失败报404错误
fn500:是一个function 处理请求失败报500错误
*/
function sendAjaxReq(method,url,param,async,type,fn200,fn404,fn500,loading){
    var req = createXMLHttpRequest();
    //2.定义处理响应
    req.onreadystatechange = function (){
        if(req.readyState == 4){
            if(req.status == 200){
                if(fn200){
                    var result;
                    if(null != type && 'xml' == type.toLowerCase()){
                        result = req.responseXML;
                    }else if(null != type && 'json' == type.toLowerCase()){
                        jsonStr = req.responseText;
                        if(document.all){
                            result = eval('(' + jsonStr + ')');
                        }else{
                            result = JSON.parse(jsonStr);
                        }
                    }else{
                        result = req.responseText;
                    }
                    fn200(result);
                    
                }
            }else if(req.status == 404){
                if(fn404){
                    fn404(); 
                }
            }else if(req.status == 500){
                if(fn500){
                    fn500();
                }
            }
        }else{
            if(loading){
                loading();
            }
        }
    };
    if('get' == method.toLowerCase()){
        req.open(method, url + (param == null ? '' : '?'+param), async);
        req.send(null);
    }else if('post' == method.toLowerCase()){
        //1.定义发送请求  请求的方式   请求的地址    是否异步；
        req.open(method, url, async);
        req.setRequestHeader("Content-Type","application/json");
        req.setRequestHeader("token",getCookie("token"));
        req.send(param);
    }
}
	function setCookie(name,value)
	{
		var Days = 7;
		var exp = new Date();
		exp.setTime(exp.getTime() + Days*24*60*60*1000);
		document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
	}
	function getCookie(name)
	{
		var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
		if(arr=document.cookie.match(reg))
		return unescape(arr[2]);
		else
		return null;
	}
	
	function delCookie(name)
	{
		var exp = new Date();
		exp.setTime(exp.getTime() - 1);
		var cval=getCookie(name);
		if(cval!=null)
		document.cookie= name + "="+cval+";expires="+exp.toGMTString();
	}
//全局静态变量 config.hlConfig.user_verification
	/*
	 * 写入a字段
            storage["a"]=1;
                写入b字段
            storage.a=1;
                写入c字段
            storage.setItem("c",3);
	 * 
	 * 
	 * */
	var config = (function($){
		$.hlConfig = {
			path:'/',
			limit:5,
			e:window.localStorage,
			user_mess:"/user/findUserById",
			user_exit:"http://localhost:8081/",
			upload_image:"/upload/uploadImage",
			user_verification :"user/verificationLogin?date=" + new Date(),
			user_update:"/user/updateUserMessage",
			jwt_check:"/jwt/checkJwt",
			index_query_stick:"/stick/queryStickByUserId",
			index_add_stick:"/stick/addStick",
			index_update_skill:"/skill/updateSkill",
			index_skill_message:"/skill/querySkill",
			index_add_skill:"/skill/addSkill"
		}
	    return $;
	})(window.config||{});
	
	function native_message(){
		
		
		
	}
	
	function checkStorage() {
		var _e=JSON.stringify(config.hlConfig.e) == "{}" ? false : true;
		if(_e){
			//检查token
			var flag=false;
			var _token=getCookie("token");
			
			var param=JSON.stringify({"token":_token});
			 sendAjaxReq("post",config.hlConfig.jwt_check,param,false,'json',function(result){
		    	 console.log(result);
		    	 if(result.code=="200"){
		    		 _e=true;
		    		 console.log("200");
		    	 }else{
		    		 _e=false;
		    		 console.log("500");
		    	 }
		    },function (){
		    	console.log("404");
		    },function (){
		    	
		    },function (){
		    	console.log("loading......");
		    });
		}
		return _e;
	};
	function updateCache(){
		 var param=JSON.stringify({"id":config.hlConfig.e.user_id});
		   sendAjaxReq("post",config.hlConfig.user_mess,param,false,'json',function(result){
		    	 console.log(result);
		    	 if(result.code=="200"){
		    		 	config.hlConfig.e.user_id=result.data.id
			    		config.hlConfig.e.user_name=result.data.userName
			    		config.hlConfig.e.user_up_date=result.data.userUpDate
			    		config.hlConfig.e.user_up_count=result.data.userUpCount
			    		config.hlConfig.e.user_detail=result.data.userDetail
			    		config.hlConfig.e.name=result.data.name
			    		config.hlConfig.e.age=result.data.age
			    		config.hlConfig.e.head_url=result.data.headUrl
		    	 }else{
		    		 layer.msg("出现未知的问题,需要重新登录");
		    	 }
		    },function (){
		    	console.log("404");
		    },function (){
		    	
		    },function (){
		    	console.log("loading......");
		    });
		
	}
