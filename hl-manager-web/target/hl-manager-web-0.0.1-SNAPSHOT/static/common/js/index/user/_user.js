$(function(){
	//渲染页面
	var user;
	   var param=JSON.stringify({"id":config.hlConfig.e.user_id});
	   sendAjaxReq("post",config.hlConfig.user_mess,param,false,'json',function(result){
	    	 console.log(result);
	    	 if(result.code=="200"){
	    		 user=result.data;
	    	 }else{
	    		 layer.msg("出现未知的问题,需要重新登录");
	    	 }
	    },function (){
	    	console.log("404");
	    },function (){
	    	
	    },function (){
	    	console.log("loading......");
	    });

//初始化页面
	 layui.use(['upload','form','layedit','laydate'],function(){
		var form=layui.form
		,layer = layui.layer
		,layedit = layui.layedit
		,upload=layui.upload
		,laydate = layui.laydate;
		  //自定义验证规则
		 form.verify({
			  user_name: function(value){
		      if(value.length < 3){
		        return '登录至少得3个字符啊';
		      }
		    }
		    ,pass: [
		      /^[\S]{6,12}$/
		      ,'密码必须6到12位，且不能出现空格'
		    ]
		    ,name: function(value){
		    	if(value.length < 2 ){
			        return '姓名至少得2个字符啊';
			    }
		    }
		  });
		  //监听提交
		  form.on('submit(submit)', function(data){
		    var param=JSON.stringify(data.field);
		    console.log(param);
		    var _user_name=data.field.user_name;
		    console.log(_user_name);
		    sendAjaxReq("post",config.hlConfig.user_update,param,false,'json',function(result){
		    	 console.log(result);
		    	 if(result.code=="200"){
		    		layer.msg("修改成功");
		    		updateCache();
		    		window.parent.location.reload();
		    	 }else{
		    		 layer.msg("出现未知的问题,需要重新登录");
		    	 }
		    },function (){
		    	console.log("404");
		    },function (){
		    	
		    },function (){
		    	console.log("loading......");
		    });
		    return false;
		  });
		 var _userName=user.userName;
		 var _passWord=user.passWord;
		 var _userDetail=user.userDetail;
		 var _createDate=user.createDate;
		 var _name=user.name;
		 var _createDateString=user.createDateString;
		 var _head_url=user.headUrl
		 var _id=user.id
		 layui.$(".hl-user-po").attr("src",_head_url);
		  form.val('edit_user', {
		      "userName": _userName // "name": "value"
		      ,"passWord":_passWord 
		      ,"userDetail": _userDetail
		      ,"createDate":_createDateString
		      ,"name":_name
		      ,"headUrl":_head_url
		      ,"id":_id
		    });
		  //撤销
		  layui.$('#LAY-component-form-setval').on('click', function(){
		    form.val('edit_user', {
		      "user_name": "贤心" // "name": "value"
		      ,"pass_word": "123456"
		      ,"desc": "我爱 layui"
		    });
		  });
//		  //表单取值
//		  layui.$('#LAY-component-form-getval').on('click', function(){
//		    var data = form.val('example');
//		    alert(JSON.stringify(data));
//		  });
		  //拖拽上传
		  upload.render({
		    elem: '#upload_img'
		    ,url: '/upload/uploadImage' //改成您自己的上传接口
		    ,accept:'images'
//		    ,acceptMime: 'image/jpg, image/png'
//		    ,auto:false
		    ,headers:{token:getCookie("token")}
		  	,data:{userName:_userName}
		    ,choose:function(res){
		    	console.log("选择文件成功");
		    	console.log(res);
		    	console.log(res.files);
		    }
		    ,done: function(res){
//		      layer.msg('上传成功');
		      layui.$('.hl-user-before').attr('src',res.data[0]);
		      layui.$("input[name='headUrl']").val(res.data[0]);
		      console.log(res)
		    }
		    ,error:function(){
		    	console.log("上传失败");
		    }
		  });
	})
})
