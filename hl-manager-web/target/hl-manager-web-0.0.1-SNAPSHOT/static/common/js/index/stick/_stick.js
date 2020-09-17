$(function(){
//初始化页面
	layui.extend({
		tinymce: '{/}/static/common/css/layui/tinymce/tinymce'
	}).use(['tinymce','upload','form','layedit','laydate'],function(){
		 var form = layui.form
		  ,layer = layui.layer
		  ,layedit = layui.layedit
		  ,laydate = layui.laydate
		  ,tinymce=layui.tinymce;
		  //创建一个编辑器
//		  var editIndex = layedit.build('LAY_stick_editor');
		  var edit = tinymce.render({
	            elem: "#LAY_stick_editor"
	            , height: 500
	            , width:'80%'
	            , plugins: 'image link media emoticons codesample lists fullscreen hr importcss code insertdatetime preview table code bdmap searchreplace help'
	            , toolbar: 'image link media emoticons codesample numlist bullist fullscreen hr importcss code insertdatetime preview table code bdmap searchreplace help'
	            , menu: {
	                file: {title: '文件', items: 'newdocument'},
	                edit: {title: '编辑', items: 'undo redo | cut copy paste pastetext | selectall'},
	                insert: {title: '插入', items: 'link media | template hr | codesample | emoticons'},
	                view: {title: '查看', items: 'visualaid'},
	                format: {title: '格式', items: 'bold italic underline strikethrough superscript subscript | formats | removeformat'},
	                table: {title: '表格', items: 'inserttable tableprops deletetable | cell row column'},
	                tools: {title: '工具', items: 'spellchecker code '}
	            }
		  		,  codesample_languages: [
		  	        {text: 'HTML/XML', value: 'markup'},
		  	        {text: 'JavaScript', value: 'javascript'},
		  	        {text: 'CSS', value: 'css'},
		  	        {text: 'PHP', value: 'php'},
		  	    ]
	            , images_upload_url: '/demo/upimg.php'
	            , image_caption: true
	            ,insertdatetime_formats: ["%H点%M分", "%Y年%m月%d日"]
	            ,file_picker_types: 'file image media'	
	            , file_picker_callback:function(callback,value,meta){//上传文件回调
	            	console.log("上传回调");
	            }
	        });
		  //自定义验证规则
		  form.verify({
		    title: function(value){
		      if(value.length < 5){
		        return '标题至少得5个字符啊';
		      }
		    }
		  });
		  //监听指定开关
		  form.on('switch(switchTest)', function(data){
		    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
		      offset: '6px'
		    });
		    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
		  });
		  
		  //监听提交
		  form.on('submit(send_stick_button)', function(data){
//		    layer.alert(JSON.stringify(data.field), {
//		      title: '最终的提交信息'
//		    })
		     var content = tinymce.get('#LAY_stick_editor').getContent();
		    layui.$("textarea[name='content']").html(content);
		    data.field.content=content;
		    var _userId=config.hlConfig.e.user_id;
		    data.field.userId=_userId;
		    var param=JSON.stringify(data.field);
		    sendAjaxReq("post",config.hlConfig.index_add_stick,param,false,'json',function(result){
		    	 if(result.code=="200"){
		    		 console.log("OK了");
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
	})
})
