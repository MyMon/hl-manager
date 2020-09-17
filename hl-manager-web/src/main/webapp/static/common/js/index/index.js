layui.use(['element', 'layedit','form','colorpicker','flow','laytpl','util'], function() {
//			var tinymce = layui.tinymce;
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
			var flow = layui.flow;
			var laytpl = layui.laytpl;
			var util = layui.util;
			 element.init();
			 //如果不把layui自带的滑动线移除，会导致子菜单隐藏
			 $(".layui-nav-bar").css("display","none");
			//鼠标悬浮
			 navMouseOver();
			 //鼠标移出
			 navMouseOut();
			
			
			//监听导航点击
			element.on('nav(index-nav)', function(elem) {
				if(this.classList.contains("layui-nav-message")){
					layer.open({
						type: 2	
						,title:'修改个人信息'
						,skin:'layui-layer-molv'
						,closeBtn:'2'
				        ,offset: ['10px','200px'] 
				        ,area:['500px','97%']
						,anim:2
				        ,id: 'layerDemo'+1 //防止重复弹出
				        ,content: '/hl_index/edit_user'
				        ,btnAlign: 'c' //按钮居中 http://192.168.8.6:8080/user/findUserById
				        ,shade: 0 //不显示遮罩
				        ,yes: function(){
				          layer.closeAll();
				        }
						,cancel: function(index, layero){ 
//						  if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
						    layer.close(index)
//						  }
						  return false; 
						}
						,success:function(){
							console.log("弹窗开启成功");
						}
					});
				}else if(this.classList.contains("layui-nav-spring")){
					console.log("spring");
				}
			});
			//建立编辑器
//			console.log(tinymce);
//			 var edit = tinymce.render({
//		            elem: "#L_content"
//		            // 其余配置可参考官方文档
//		        },(opt)=>{
//		            //加载完成后回调	
//		        });
			var form=layui.form;
			 //自定义验证规则
			 form.verify({
				 title: function(value){
			      if(value.length < 3){
			        return '标题至少得3个字符啊';
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
			form.render();
			 var colorpicker = layui.colorpicker;
			  //渲染
			  colorpicker.render({
				elem: '#test1'  //绑定元素
			  });
			
			  
			 flow.load({
			   elem: '#index_flow' //流加载容器
			   ,scrollElem: '#index_flow' //滚动条所在元素，一般不用填，此处只是演示需要。
			   ,done: function(page, next){ //执行下一页的回调 limit
				   console.log(page);
				   var param=JSON.stringify({
							   "id":config.hlConfig.e.user_id
							   ,"pageNumber":page
							   ,"limit":config.hlConfig.limit
							   });
				   //index_query_stick
				   sendAjaxReq("post",config.hlConfig.index_query_stick,param,false,'json',function(result){
				    	 console.log(result);
				    	 if(result.code=="200"){
				    		 console.log("ok");
				    		 var lis = [];
				    		 var _data_list=result.data.list;
				    		 for(var i=0;i<_data_list.length;i++){
				    			 var server_data={ //数据
					   			 			"title":_data_list[i].title
					   			 			,"like":_data_list[i].like
					   			 			,"collect":_data_list[i].collect
					   			 			,"stickType":_data_list[i].stickType
					   			 			,"stickMoney":_data_list[i].stickMoney
					   			 			,"stickDiscuss":_data_list[i].stickDiscuss
					   			 			,"createDate":_data_list[i].createDate
					   			 			,"content":_data_list[i].content
					   			 			,"headUrl":config.hlConfig.e.head_url
					   			 			,"username":config.hlConfig.e.name
					   			 			,"list":[{"modname":"弹层","alias":"layer","site":"layer.layui.com"},{"modname":"表单","alias":"form"}]
					   			 		};
				    			 var getTpl = demo2.innerHTML
									,view = document.getElementById('view');
											laytpl(getTpl).render(server_data, function(html){
												lis.push('<li style="padding-bottom: 25px;">'+ html+'</li>');
											});
				    		 }
				    		//执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
						       //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
						       next(lis.join(''), page < result.data.pages); //假设总页数为 10
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
			//执行
			  util.fixbar({
				bar1: true
				,bar2:true
				,top:true
				,click: function(type){
				  console.log(type);
				  if(type === 'bar1'){
					alert('敬请期待')
				  }
				}
			  });
		});
//页面加载 访问数据
$(function(){
	if(!checkStorage()){
		console.log("失去登录信息");
		alert("登录失效了,请重新登录");
//		 setTimeout(function (){
    	window.location=config.hlConfig.user_exit;
//    	 }, 1000);
	}
	
	console.log(getCookie("token"));
	console.log(config.hlConfig.e.head_url);
	$(".hl-index-img").attr("src",config.hlConfig.e.head_url);
	$(".hl-index-name").html(config.hlConfig.e.name);
	$(".hl-index-desc").html(config.hlConfig.e.user_detail);
	$(".hl_index-exit").click(function(){
		layer.open({
	        type: 1
	        ,title: false //不显示标题栏
	        ,closeBtn: false
	        ,area: '300px;'
	        ,shade: 0.8
	        ,id: 'hl-index-exit-id' //设定一个id，防止重复弹出
	        ,btn: ['不了', '残忍退出']
	        ,btnAlign: 'c'
	        ,moveType: 1 //拖拽模式，0或者1
	        ,content: '<div style="padding: 105px; background-color: #393D49; color: #fff; font-weight: 300;">确定退出吗</div>'
	        ,success: function(layero){
	          var btn = layero.find('.layui-layer-btn');
	          btn.find('.layui-layer-btn0').attr({
	           
	          });
	          btn.find('.layui-layer-btn1').click(function(){
	        	  //执行退出操作
	        	  config.hlConfig.e.clear();
	        	  delCookie("token");
	        	  console.log(config.hlConfig.user_exit);
	        	  window.location=config.hlConfig.user_exit;
	          })
	        }
	      });
	});
	$(".iconfont-color").hover(function(){
		$(this).css("color","grey");
	},function(){
		$(this).css("color","");
	});
	layui.$(".index-send").click(function(){
		layer.open({
			type: 2	
			,title:'发布'
			,skin:'layui-layer-molv'
			,closeBtn:'2'
	        ,offset: ['10px','375px'] 
	        ,area:['1000px','97%']
			,anim:2
	        ,id: 'layer_stick_send' //防止重复弹出
	        ,content: '/hl_index/stick_send'
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
			,success:function(){
				console.log("弹窗开启成功");
			}
		});
		
	})
	
})
	function navMouseOver() {
				$(".layui-nav-bar").css("display", "none");
				$(".nav-custom").each(function() {
					
					$(this).mouseover(function() {
						$(this).children("div").addClass("layui-show");
						$(this).children("div").css("visibility", "visible");
						$(this).children("div").children("ul").children("li").children("a").children("span").css("visibility",
							"visible");
						var ulCount = $(this).children("div").children("ul").length;
						var liCount = $(this).children("div").children("ul").children("li").length;
						var maxLength = 0;
						$(this).children("div").children("ul").children("li").each(function() {
							if ($(this).children("span").text().length > maxLength) {
								maxLength = $(this).children("span").text().length;
							}
							if ($(this).children("span").text() == "") {
								if ($(this).children("a").children("span").text().length > maxLength) {
									maxLength = $(this).children("a").children("span").text().length;
								}
							}
						});
						var width = maxLength * 13 + 40;
						$(".nav-custom").children("div").children("ul").css("width", width + "px");
						$(".nav-custom").children("div").css("width", width * ulCount + 10 + "px");
						$(".nav-custom").children("div").css("left", (-1 * width * ulCount) / 2 + ($(".nav-custom").width()) / 2 +
							"px");
					});
				});
			};
			function navMouseOut() {
				$(".nav-custom").each(function() {
					$(this).mouseout(function() {
						
						$(this).children("div").css("visibility", "hidden");
						$(this).children("div").children("ul").children("li").children("a").children("span").css("visibility",
							"hidden");
					});
				});
			}
			
			
			
