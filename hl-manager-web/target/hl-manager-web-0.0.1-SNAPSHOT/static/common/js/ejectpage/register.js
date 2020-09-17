layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer;
  //自定义验证规则
  form.verify({
	  name: function(value){
	      if(value.length > 5 || value.length<2){
	        return '请输入2~5位用户名称';
	      }
      }
  	  ,userName:function(value){
  		  if(value==""){
  			  return '请输入登录名称';
  		  }
	  	  if(!new RegExp('^[\u4E00-\u9FA5A-Za-z0-9]+$').test(value)){
				return '支持A~Z,a~z,0~9';
		  }  
		  if(value.length>9||value.length<4){
		  		return '请输入4~9位登录名';
		  }
  	   }
  	  ,pass: [
      /^[\S]{6,12}$/
      ,'密码必须6到12位，且不能出现空格'
      ]
      ,_pass: function(value){
    	  if(value==""){	 
    		  return '请输入确认密码';
    	  }
    	 if($('input[name="passWord"]').val()!=value){
    		 return '两次输入密码不一致亲';
    	 } 
      }
  	  ,vercode:function(value){
  		if(value.toUpperCase()!=document.getElementById('identigying_canvas').getAttribute("identigying_code").toUpperCase()){
  			return '请输入正确的验证码';
  		}	
  	  }
  }); 
  //监听提交
  form.on('submit(begin_register)', function(data){
	  var field = data.field;
      console.log(data);
      
      //是否同意用户协议
      if(!field.agreement){
        return layer.msg('你必须同意用户协议才能注册');
      }
	  var url = "senRegister?date=" + new Date();
	  var param=JSON.stringify(data.field);
	     sendAjaxReq("post",url,param,true,'json',function(result){
	    	 layer.msg("注册成功");
	    	 setTimeout(function (){
	    		 document.getElementById("to_login").click();
	    		 }, 1000);
	     },function (){
	    	 
	     },function (){
	    	 
	     },function (){
	    	console.log("loading......");
	    	layer.msg('玩命加载中......');
	     });
	    return false;
  });
});
$(function(){
	//产生验证码 
	var canvas = document.getElementById('identigying_canvas');
	//初始化点击事件 
	init_canvas(canvas);
})

/* layui.use(['form', 'user'], function(){
    var $ = layui.$
    ,form = layui.form
    form.render();

    //提交
    form.on('submit(LAY-user-reg-submit)', function(obj){
      var field = obj.field;
      console.log(obj);
      //确认密码
      if(field.passWord !== field.repass){
        return layer.msg('两次密码输入不一致');
      }
      
      //是否同意用户协议
      if(!field.agreement){
        return layer.msg('你必须同意用户协议才能注册');
      }
     //效验验证码
      var _vercode=field.vercode;
      
      return false;
    });
  });*/

