<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎光临</title>

<script type="text/javascript"
	src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/common/ajax_server.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/global.css">
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/index/stick/all_user_stick.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/iconfont/iconfont.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/index/index.css"></link>
</head>
	<body>
		<div class="layui-layout layui-layout-admin">
		  <div class="layui-header">
		    <div class="layui-logo">HL</div>
		    <!-- 头部区域（可配合layui已有的水平导航） -->
		    <ul class="layui-nav layui-layout-left" >
		      <li class="layui-nav-item"><a href="/hl_index/hl_index">主页</a></li>
		      <li class="layui-nav-item"><a href="javascript:;">商品管理</a></li>
		      <li class="layui-nav-item layui-this"><a class="layui-nav-sticks" href="javascript:;">用户</a></li>
		      <li class="layui-nav-item">
		        <a href="javascript:;">其它系统</a>
		        <dl class="layui-nav-child">
		          <dd><a href="javascript:;">邮件管理</a></dd>
		          <dd><a href="javascript:;">消息管理</a></dd>
		          <dd><a href="javascript:;">授权管理</a></dd>
		        </dl>
		      </li>
		    </ul>
		    <ul class="layui-nav layui-layout-right" lay-filter="index-nav">
		      <li class="layui-nav-item">
		        <a href="javascript:;">
		          <img src="" class="layui-nav-img hl-index-img">
		          <span  class="hl-index-name"></span>
		        </a>
		        <dl class="layui-nav-child">
		          <dd><a class="layui-nav-message" href="javascript:;">基本资料</a></dd>
		          <dd><a href="javascript:;">安全设置</a></dd>
		        </dl>
		      </li>
		      <li class="layui-nav-item hl_index-exit"><a href="javascript:;">退了</a></li>
		    </ul>
		  </div>
		 	 <div class="fly-panel fly-column"> 
			   <div class="layui-container"> 
			    <ul class="layui-clear"> 
			     <li class="layui-hide-xs  layui-this"><a href="/">首页</a></li> 
			     <li> <a href="/column/quiz/"> 提问 </a> </li> 
			     <li> <a href="/column/share/"> 分享 <span class="layui-badge-dot"></span> </a> </li> 
			     <li> <a href="/column/discuss/"> 讨论 </a> </li> 
			     <li> <a href="/column/suggest/"> 建议 </a> </li> 
			     <li> <a href="/column/notice/"> 公告 </a> </li> 
			     <li> <a href="/column/news/"> 动态 </a> </li> 
			    </ul> 
			    <div class="fly-column-right layui-hide-xs"> 
			     <span class="fly-search LAY_search"><i class="layui-icon"></i></span> 
			     <a href="/jie/add/" class="layui-btn">发表新帖</a> 
			    </div> 
			    <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
			     <a href="/jie/add/" class="layui-btn">发表新帖</a> 
			    </div> 
			   </div>
			  </div> 
			  <div class="layui-container"> 
			   <div class="layui-row layui-col-space15"> 
			    <div class="layui-col-md8"> 
			     <div class="fly-panel layui-hide-xs"> 
			      <div class="layui-row fly-panel-main" style="padding: 15px;"> 
			       <div class="layui-carousel fly-topline" id="FLY_topline" lay-anim="fade" lay-indicator="inside" lay-arrow="hover" style="width: 100%; height: 172px;"> 
			        <div carousel-item=""> 
			         <div time-limit="2020-04-15 0:0:0" class="layui-this"> 
			          <a href="https://coding.net/page/agile?utm_source=layui&amp;utm_medium=cpc&amp;utm_campaign=minjieguanli" target="_blank" id="fly-spm-event-banner-3" rel="nofollow"> <img src="//cdn.layui.com/upload/2019_12/168_1576745775012_73794.jpg" alt="CODING" /> </a> 
			         </div> 
			         <div time-limit="2020-08-10 0:0:0" class=""> 
			          <a href="http://www.yixiekeji.com/" target="_blank" id="fly-spm-event-banner-2" rel="nofollow"> <img src="//cdn.layui.com/upload/2019_6/168_1561705041953_38174.jpg" alt="yixiekeji" /> </a> 
			         </div> 
			        </div> 
			        <div class="layui-carousel-ind">
			         <ul>
			          <li class="layui-this"></li>
			          <li class=""></li>
			         </ul>
			        </div>
			        <button class="layui-icon layui-carousel-arrow" lay-type="sub"></button>
			        <button class="layui-icon layui-carousel-arrow" lay-type="add"></button>
			       </div> 
			      </div>
			     </div> 
			     <div class="fly-panel"> 
			      <div class="fly-panel-title fly-filter"> 
			       <a>置顶</a> 
			       <a href="#signin" class="layui-hide-sm layui-show-xs-block fly-right" id="LAY_goSignin" style="color: #FF5722;">去签到</a> 
			      </div> 
			      <ul class="fly-list"> 
			       <li> <a href="/u/48889176" class="fly-avatar"> <img src="//cdn.layui.com/avatar/48889176.png?t=1572670620541" alt="Microanswer" /> </a> <h2> <a class="layui-badge">分享</a> <a href="/jie/63666/">基于 layui 的下拉菜单控件 dropdown文档</a> </h2> 
				        <div class="fly-list-info"> 
				         <a href="/u/48889176" link=""> <cite>Microanswer</cite> </a> 
				         <span>2020-3-20 </span> 
				         <span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i class="iconfont icon-kiss"></i> 20</span> 
				         <span class="fly-list-nums"> <i class="iconfont icon-pinglun1" title="回答"></i> 32 </span> 
				        </div> 
				        <div class="fly-list-badge"> 
				         <span class="layui-badge layui-bg-red">精帖</span> 
				        </div>
			        </li> 
			      </ul> 
			     </div> 
			     <div class="fly-panel" style="margin-bottom: 0;"> 
			      <div class="fly-panel-title fly-filter">
			       <a href="/column/all/" class="layui-this">综合</a>
			       <span class="fly-mid"></span>
			       <a href="/column/all/unsolved/">未结</a>
			       <span class="fly-mid"></span>
			       <a href="/column/all/solved/">已结</a>
			       <span class="fly-mid"></span>
			       <a href="/column/all/wonderful/">精华</a>
			      </div> 
			      <ul class="fly-list"> 
			       <li> <a href="/u/55265616" class="fly-avatar"> <img src="//thirdqq.qlogo.cn/g?b=oidb&amp;k=8ZWNcV2icHsBqrgWrIfTRvA&amp;s=100&amp;t=1556671591" alt="潘粤明的小可爱" /> </a> <h2> <a class="layui-badge">提问</a> <a href="/jie/64171/">edit: 'text'点击之后样式变化</a> </h2> 
				        <div class="fly-list-info"> 
				         <a href="/u/55265616" link=""> <cite>潘粤明的小可爱</cite> </a> 
				         <span>48分钟前</span> 
				         <span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i class="iconfont icon-kiss"></i> 20</span> 
				         <span class="fly-list-nums"> <i class="iconfont icon-pinglun1" title="回答"></i> 2 </span> 
				        </div> 
				        <div class="fly-list-badge"> 
				        </div>
			        </li> 
			      
			      </ul> 
			<!--       <div style="text-align: center">  -->
			<!--        <div class="laypage-main">  -->
			<!--         <a href="" class="laypage-next">更多求解</a>  -->
			<!--        </div>  -->
			<!--       </div>  -->
			     </div> 
			    </div> 
			    <div class="layui-col-md4"> 
			     <div class="fly-panel"> 
			      <h3 class="fly-panel-title">温馨通道</h3> 
			      <div class="layui-row fly-panel-main" style="padding: 15px;"> 
			      
			      </div>
			     </div> 
			     <div class="fly-panel fly-signin"> 
			     
			     
			     </div> 
			    
			     <div class="fly-panel fly-rank fly-rank-reply" id="LAY_replyRank"> 
			      <h3 class="fly-panel-title">回贴周榜</h3> 
			      <dl>
			       <dd>
			        <a href="/u/5766264"><img src="//res.layui.com/images/fly/avatar/9.jpg" /><cite>muxinss</cite><i>77次回答</i></a>
			       </dd>
			       <dd>
			        <a href="/u/2430456"><img src="//cdn.layui.com/avatar/2430456.jpg?t=1504089075922" /><cite>HiTerry</cite><i>66次回答</i></a>
			       </dd>
			       <dd>
			        <a href="/u/52468416"><img src="//thirdqq.qlogo.cn/g?b=oidb&amp;k=EPianSQbgh1Micg0rsrIVqhA&amp;s=100&amp;t=1557387140" /><cite>Angel丨灬泪雨</cite><i>47次回答</i></a>
			       </dd>
			       <dd>
			        <a href="/u/22133664"><img src="//thirdqq.qlogo.cn/qqapp/101235792/161AB0A2F3D8C183BE849BF363A5FEE0/100" /><cite>IDyun</cite><i>38次回答</i></a>
			       </dd>
			       
			      </dl> 
			     </div> 
			     <dl class="fly-panel fly-list-one"> 
			      <dt class="fly-panel-title">
			     	  本周热议
			      </dt> 
			      <dd> 
			       <a href="/jie/63937/">【layer弹出层】content引入html，当html结构变化，弹窗会动态加载吗？</a> 
			       <span><i class="iconfont icon-pinglun1"></i> 18</span> 
			      </dd> 
			     </dl> 
			    </div> 
			   </div>
			  </div> 
		 </div>	
	</body>
</html>

