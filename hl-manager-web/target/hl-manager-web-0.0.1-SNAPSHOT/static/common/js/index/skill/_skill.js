$(function(){
		if(!checkStorage()){
			console.log("失去登录信息");
			alert("登录失效了,请重新登录");
//			 setTimeout(function (){
	    	window.location=config.hlConfig.user_exit;
//	    	 }, 1000);
		}
//初始化页面
	layui.extend({
		tinymce: '{/}/static/common/css/layui/tinymce/tinymce'
	}).use(['layer','element','tinymce'],function(){
		  var layer = layui.layer
		  ,element = layui.element
		  ,tinymce=layui.tinymce;
		  element.init();
		//监听导航点击
			element.on('nav(skill-nav)', function(elem) {
				if(this.classList.contains("skill-edit")){
					
				}
			});
			//渲染页面
			  var userId=config.hlConfig.e.user_id;
			  var skillType=$(".skill_type").html();
			  console.log(skillType);
			  var data={"userId":userId,"skillType":skillType};
			  var param=JSON.stringify(data);
			    console.log(param);
			    sendAjaxReq("post",config.hlConfig.index_skill_message,param,false,'json',function(result){
			    	 console.log(result);
			    	 if(result.code=="200"){
			    		 var art_html=result.data.skillContent;
			    		 $("#article").attr("skill-id",result.data.id);
			    		$("#article").html(art_html);
			    	 }else{
			    		 layer.msg("出现未知的问题,需要重新登录");
			    	 }
			    },function (){
			    	console.log("404");
			    },function (){
			    	
			    },function (){
			    	console.log("loading......");
			    });
			
	})
	$(".skill-edit").on('click',function(){
		layer.open({
			type: 2	
			,title:['','background:rgb(0, 150, 136)']
			,skin:'edit-skill-class'
			,closeBtn:'1'
	        ,offset: ['10px','200px'] 
	        ,area:['80%','100%']
			,anim:2
			,maxmin:true
	        ,id: 'layerDemo'+1 //防止重复弹出
	        ,content: '/hl_index/editSkill'
	        ,btnAlign: 'c' //按钮居中 http://192.168.8.6:8080/user/findUserById
	        ,shade: 0 //不显示遮罩
	        ,yes: function(){
	          layer.closeAll();
	        }
			,cancel: function(index, layero){ 
//			  if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
			    layer.close(index)
//			  }
			  return false; 
			}
			,success:function(layero,index){
				var body = layer.getChildFrame('body', index);
//				var skillType=$(layero).find("iframe")[0].contentWindow.document.getElementClassName("skill_type")[0];
				var skillType=$(window.parent.document).find(".skill_type").html();
				body.contents().find("#skill-type").html(skillType);
				body.contents().find(".send_skill").attr("skill-type",skillType);
				body.contents().find(".send_skill").attr("skill-id",$(window.parent.document).find("#article").attr("skill-id"));
			
			}
		});
		
	})
	
})
