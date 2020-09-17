$(function() {
	// Victor("container", "output"); //登陆背景函数
	// $("#entry_name").focus();
	// $(document).keydown(function(event) {
	// if (event.keyCode == 13) {
	// $("#entry_btn").click();
	layui.use(['carousel','form'], function(){
		var form = layui.form
		,carousel = layui.carousel
		  ,layer = layui.layer;
		//自定义验证规则
		form.verify({
			userName: function(value){
				if(value.length < 2){
					return '账号至少得2个字符';
				}
			}
			,passWord: [/^[\S]{6,12}$/,'密码必须6到12位，且不能出现空格']
			,vercodes: function(value){
				//获取验证码
				var zylVerCode = $(".zylVerCode").html();
				if(value!=zylVerCode){
					return '验证码错误（区分大小写）';
				}
			}
			,content: function(value){
				layedit.sync(editIndex);
			}
		});
		//监听提交
		  form.on('submit(LAY-user-login-submit)', function(data){
			  var field = data.field;
			  var is_ok=false;
//		      if(field.vercode.toUpperCase()!=document.getElementById('identigying_canvas').getAttribute("identigying_code").toUpperCase()){
//		  			layer.msg("请输入正确的验证码");
//		  			return is_ok;
//		  	  }	
			  
			  var url = config.hlConfig.user_verification;
			  var param=JSON.stringify(data.field);
			     sendAjaxReq("post",url,param,false,'json',function(result){
			    	 console.log(result);
			    	 if(result.code=="200"){
			    		setCookie("token",result.data.token);
			    		config.hlConfig.e.user_id=result.data.id
			    		config.hlConfig.e.user_name=result.data.userName
			    		config.hlConfig.e.user_up_date=result.data.userUpDate
			    		config.hlConfig.e.user_up_count=result.data.userUpCount
			    		config.hlConfig.e.user_detail=result.data.userDetail
			    		config.hlConfig.e.name=result.data.name
			    		config.hlConfig.e.age=result.data.age
			    		config.hlConfig.e.head_url=result.data.headUrl
			    		console.log(config.hlConfig.e);
			    		is_ok=true;
			    	  }else{
			    		layer.msg("用户名或密码不正确");
			    		is_ok=false;
			    	  }
			    	 	return;
			    },function (){
			    	console.log("404");
			    },function (){
			    	
			    },function (){
			    	console.log("loading......");
			    });
			     if(is_ok){
			    	 return true;
			     }else{ 
			    	 return false;
			     }
		});
		 
			//设置轮播主体高度
			var zyl_login_height = $(window).height()/1.3;
			var zyl_car_height = $(".zyl_login_height").css("cssText","height:" + zyl_login_height + "px!important");
			//Login轮播主体
		 	carousel.render({
				elem: '#zyllogin'//指向容器选择器
				,width: '100%' //设置容器宽度
				,height:'zyl_car_height'
				,arrow: 'always' //始终显示箭头
				,anim: 'fade' //切换动画方式
				,autoplay: true //是否自动切换false true
				,arrow: 'hover' //切换箭头默认显示状态||不显示：none||悬停显示：hover||始终显示：always
				,indicator: 'none' //指示器位置||外部：outside||内部：inside||不显示：none
				,interval: '5000' //自动切换时间:单位：ms（毫秒）
			});
			
			//监听轮播--案例暂未使用
			carousel.on('change(zyllogin)', function(obj){
				var loginCarousel = obj.index;
			});
			
			//粒子线条
			$(".zyl_login_cont").jParticle({
				background: "rgba(0,0,0,0)",//背景颜色
				color: "#fff",//粒子和连线的颜色
				particlesNumber:100,//粒子数量
				//disableLinks:true,//禁止粒子间连线
				//disableMouse:true,//禁止粒子间连线(鼠标)
				particle: {
				    minSize: 1,//最小粒子
				    maxSize: 3,//最大粒子
				    speed: 30,//粒子的动画速度
				 }
			});
	});
});
$(function(){
	//产生验证码 
//	var canvas = document.getElementById('identigying_canvas');
	//初始化点击事件 
//	init_canvas(canvas);
})