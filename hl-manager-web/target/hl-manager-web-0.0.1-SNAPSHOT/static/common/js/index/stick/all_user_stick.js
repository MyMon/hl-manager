$(function(){
//初始化页面
	layui.use(['element','upload','form','layedit','laydate'],function(){
		 var form = layui.form
		  ,layer = layui.layer
		  ,layedit = layui.layedit
		  ,laydate = layui.laydate
		  ,element = layui.element;
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
				}
			});
	})
})
//页面加载 访问数据
$(function(){
	if(!checkStorage()){
		console.log("失去登录信息");
		alert("登录失效了,请重新登录");
    	window.location=config.hlConfig.user_exit;
	}
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
})