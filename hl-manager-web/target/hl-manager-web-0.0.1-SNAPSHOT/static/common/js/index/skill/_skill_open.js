$(function(){
//初始化页面
	layui.extend({
		tinymce: '{/}/static/common/css/layui/tinymce/tinymce'
	}).use(['element','tinymce','upload','layedit','laydate'],function(){
		  var layer = layui.layer
		  ,layedit = layui.layedit
		  ,laydate = layui.laydate
		  ,element = layui.element
		  ,tinymce=layui.tinymce;
		  element.init();
		  //创建一个编辑器
		  var user_name=config.hlConfig.e.user_name;
		  var edit = tinymce.render({
	                selector: '#skill_stick_editor',
	                
	                //skin:'oxide-dark',
	                height:680, //编辑器高度
	                max_height:680,
	                min_height:500,
	                width:1200,
	                language:'zh_CN',
	                plugins: 'print preview searchreplace autolink directionality visualblocks visualchars fullscreen image link media template code codesample table charmap hr pagebreak nonbreaking anchor insertdatetime advlist lists wordcount imagetools textpattern help emoticons autosave bdmap indent2em autoresize lineheight formatpainter axupimgs',
	                toolbar: 'code undo redo restoredraft | cut copy paste pastetext | forecolor backcolor bold italic underline strikethrough link anchor | alignleft aligncenter alignright alignjustify outdent indent | \
	                styleselect formatselect fontselect fontsizeselect | bullist numlist | blockquote subscript superscript removeformat | \
	                table image media charmap emoticons hr pagebreak insertdatetime print preview | fullscreen | bdmap indent2em lineheight formatpainter axupimgs',
	               
	                /*content_css: [ //可设置编辑区内容展示的css，谨慎使用
	                    '/static/reset.css',
	                    '/static/ax.css',
	                    '/static/css.css',
	                ],*/
	                fontsize_formats: '12px 14px 16px 18px 24px 36px 48px 56px 72px',
	                font_formats: '微软雅黑=Microsoft YaHei,Helvetica Neue,PingFang SC,sans-serif;苹果苹方=PingFang SC,Microsoft YaHei,sans-serif;宋体=simsun,serif;仿宋体=FangSong,serif;黑体=SimHei,sans-serif;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;',
	                link_list: [
	                    { title: '预置链接1', value: 'http://www.tinymce.com' },
	                    { title: '预置链接2', value: 'http://tinymce.ax-z.cn' }
	                ],
	                image_list: [
	                    { title: '预置图片1', value: 'https://www.tiny.cloud/images/glyph-tinymce@2x.png' },
	                    { title: '预置图片2', value: 'https://www.baidu.com/img/bd_logo1.png' }
	                ],
	                image_class_list: [
	                { title: 'None', value: '' },
	                { title: 'Some class', value: 'class-name' }
	                ],
	                importcss_append: true,
	                //自定义文件选择器的回调内容
	                images_upload_url:'/upload/tinymceUploadImage?userName='+user_name,
	                images_upload_handler: function(blobInfo,succFun,failFun){
	                	var xhr, formData;
	                    var file = blobInfo.blob();//转化为易于理解的file对象
	                    xhr = new XMLHttpRequest();
	                    xhr.withCredentials = false;
	                    xhr.open('POST', '/upload/tinymceUploadImage?userName='+user_name);
	                    xhr.onload = function() {
	                        var json;
	                        if (xhr.status != 200) {
	                            failFun('HTTP Error: ' + xhr.status);
	                            return;
	                        }
	                        json = JSON.parse(xhr.responseText);
	                        if (!json || typeof json.location != 'string') {
	                            failFun('Invalid JSON: ' + xhr.responseText);
	                            return;
	                        }
	                        succFun(json.location);
	                    };
	                    formData = new FormData();
	                    formData.append('file', file, file.name );//此处与源文档不一样
	                    xhr.send(formData);
	                },
	                file_picker_callback: function (callback, value, meta) {
	                	console.log(value);
	                    if (meta.filetype === 'file') {
	                      callback('https://www.baidu.com/img/bd_logo1.png', { text: 'My text' });
	                    }
	                    if (meta.filetype === 'image') {
	                      callback('https://www.baidu.com/img/bd_logo1.png', { alt: 'My alt text' });
	                    }
	                    if (meta.filetype === 'media') {
	                      callback('movie.mp4', { source2: 'alt.ogg', poster: 'https://www.baidu.com/img/bd_logo1.png' });
	                    }
	                },
	                autosave_ask_before_unload: false,
	                init_instance_callback :function (editor){
	                	//渲染页面
	              	  var userId=config.hlConfig.e.user_id;
	              	  var skillType=$(".send_skill").attr("skill-type");
	              	  var data={"userId":userId,"skillType":skillType};
	              	  var param=JSON.stringify(data);
	              	    sendAjaxReq("post",config.hlConfig.index_skill_message,param,false,'json',function(result){
	              	    	 console.log(result);
	              	    	 if(result.code=="200"){
	              	    		 var art_html=result.data.skillContent;
	              	    		 edit.setContent(art_html);
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
	            });
	      layui.$(".send_skill").click(function(){
	    	  var skillContent = tinymce.get('#skill_stick_editor').getContent();
	    	  var skillType=$(this).attr("skill-type");
	    	  var skillId=$(this).attr("skill-id");
	    	  var data={"id":skillId,"skillContent":skillContent};
	    	  var param=JSON.stringify(data);
			    sendAjaxReq("post",config.hlConfig.index_update_skill,param,false,'json',function(result){
			    	 if(result.code=="200"){
			    		layer.msg("修改成功");
			    	 }else{
			    		 layer.msg("出现未知的问题,需要重新登录");
			    	 }
			    },function (){
			    	console.log("404");
			    },function (){
			    	
			    },function (){
			    	console.log("loading......");
			    });
	    	  alert("更新完成");
	      }) 
	})
	
})
