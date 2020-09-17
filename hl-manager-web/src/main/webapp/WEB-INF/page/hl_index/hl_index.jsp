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
	href="${ctx}/static/common/js/layui/css/layui.css"/>
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/index/index.js"></script>
	<script type="text/javascript"
	src="${ctx}/static/common/js/index/chat.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/iconfont/iconfont.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/index/index.css"></link>
		<link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/index/echat.css" />


</head>
	
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
  		<div class="layui-header">
		    <div class="layui-logo">HL</div>
		    <!-- 头部区域（可配合layui已有的水平导航） -->
		  <ul id="moudleMenu" class="layui-nav layui-layout-left kit-nav">
		      <li class="layui-nav-item layui-this"><a href="/hl_index/hl_index">主页</a></li>
		      <li class="layui-nav-item"><a href="javascript:;">技术中心</a></li>
		      <li class="layui-nav-item"><a class="layui-nav-sticks" href="/hl_index/hl_index_sticks">用户</a></li>
		      <li class="layui-nav-item">
		        <a href="javascript:;">其它系统</a>
		      </li>
		    
				<li class="layui-nav-item nav-custom"><a>H5<span class="layui-nav-more"></span></a>
					<div class="layui-nav-child layui-anim layui-anim-upbit" style="visibility: hidden; width: 167px; left: -30.5px;">
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>JavaScript</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=javaScript基础知识">
									<span style="visibility: hidden;">基础知识</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=ajax/模块化">
									<span style="visibility: hidden;">ajax/模块化</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Socket">
									<span style="visibility: hidden;">Socket</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=javascript封装">
									<span style="visibility: hidden;">令人拗口的封装</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=js技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>HTML</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=html标签">
									<span style="visibility: hidden;">常用标签</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=DOM/BOM操作">
									<span style="visibility: hidden;">DOM/BOM操作</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=js相关实现">
									<span style="visibility: hidden;">相关实现</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>常用框架</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Vue">
									<span style="visibility: hidden;">Vue</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=node.js">
									<span style="visibility: hidden;">node.js</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=angular">
									<span style="visibility: hidden;">angular</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=hui、mui、其他">
									<span style="visibility: hidden;">hui、mui、其他...</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="layui-nav-item nav-custom"><a>java<span class="layui-nav-more"></span></a>
					<div class="layui-nav-child layui-anim layui-anim-upbit" style="width: 167px; left: -367.5px; visibility: hidden;">
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>javaSE</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SE基础知识">
									<span style="visibility: hidden;">基础知识</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SE集合">
									<span style="visibility: hidden;"> 集合</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SE多线程">
									<span style="visibility: hidden;">多线程</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SEJvm">
									<span style="visibility: hidden;">Jvm</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SE技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>javaWEB</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Http">
									<span style="visibility: hidden;">http</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=tomcat">
									<span style="visibility: hidden;">tomcat</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Servlet">
									<span style="visibility: hidden;">Servlet</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=web技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>java框架</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=spring">
									<span class="layui-nav-spring" style="visibility: hidden;">spring <i class="iconfont iconarrow- iconfont-color"></i></span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=springMvc">
									<span style="visibility: hidden;">springMvc</span>
								</a>
							</li>	
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Mybatis">
									<span style="visibility: hidden;">Mybatis</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="j/hl_index/skill?skillType=框架技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>微服务/SOA</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SpringBoot">
									<span style="visibility: hidden;">Spring Boot</span>
								</a>
							</li>							
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Spring Cloud">
									<span style="visibility: hidden;">Spring Cloud</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Jersey">
									<span style="visibility: hidden;">Jersey</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Dubbo">
									<span style="visibility: hidden;">Dubbo</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=SOA技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						
						</ul>
					</div>
				</li>
				<li class="layui-nav-item nav-custom">
					<a>数据库<span class="layui-nav-more"></span>
					</a>
					<div class="layui-nav-child layui-anim layui-anim-upbit" style="width: 167px; left: -367.5px; visibility: hidden;">
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>DB</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=mysql">
									<span style="visibility: hidden;">mysql</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=oracle">
									<span style="visibility: hidden;">oracle</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=sqlServer">
									<span style="visibility: hidden;">sql Server</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=MongoDB">
									<span style="visibility: hidden;">MongoDB</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>nosql</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Redis">
									<span style="visibility: hidden;">redis</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Memecache">
									<span style="visibility: hidden;">Memcache</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=MongoDb">
									<span style="visibility: hidden;">MongoDb</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=nosql技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>Linux</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Linux基础命令">
									<span style="visibility: hidden;">基础命令</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=shell脚本">
									<span style="visibility: hidden;">shell脚本</span>
								</a>
							</li>	
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=功能设置">
									<span style="visibility: hidden;">功能设置</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Linux技术案例">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="layui-nav-item nav-custom">
					<a>常用工具/功能Util<span class="layui-nav-more"></span>
					</a>
					<div class="layui-nav-child layui-anim layui-anim-upbit" style="width: 167px; left: -367.5px; visibility: hidden;">
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>常用工具</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=maven">
									<span style="visibility: hidden;">maven</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=git">
									<span style="visibility: hidden;">git</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=Hbuilder">
									<span style="visibility: hidden;">Hbuilder</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=常用工具">
									<span style="visibility: hidden;">winscp、FileZilla、其他...</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>功能util</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=工具类">
									<span style="visibility: hidden;">工具类</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=聊天引擎">
									<span style="visibility: hidden;">聊天引擎</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=流媒体">
									<span style="visibility: hidden;">流媒体(断点续传)</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="/hl_index/skill?skillType=短信、分页、其他">
									<span style="visibility: hidden;">短信、分页、其他</span>
								</a>
							</li>
						</ul>
						<ul style="float: left; text-align: center; color: black; margin: 0px; width: 157px;">
							<li><span>Linux</span>
								<div style="height: 1px; background-color: #009688; width: 90%; margin: 0 auto;">&nbsp;</div>
							</li>
							<li>
								<a style="padding: 0;" href="javascript:void(0);">
									<span style="visibility: hidden;">基础命令</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="javascript:void(0);">
									<span style="visibility: hidden;">shell脚本</span>
								</a>
							</li>	
							<li>
								<a style="padding: 0;" href="javascript:void(0);">
									<span style="visibility: hidden;">功能设置</span>
								</a>
							</li>
							<li>
								<a style="padding: 0;" href="javascript:void(0);">
									<span style="visibility: hidden;">技术案例</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
<!-- 				<span class="layui-nav-bar" style="display: none; left: 192px; top: 55px; width: 0px; opacity: 0;"></span> -->
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
	<div class="layui-side layui-bg-black" style="width: 240px;">
    	<div class="layui-side-scroll" style="width: 240px;">
			<div class="layui-card-	body" style="height: 800px;text-align: center;line-height: 27px;">
					<div class="layui-inline" style="padding: 33px;">
							<img src="" class="layui-circle hl-index-img" style="width: 100px;height: 100px;">
					</div>
					<div>
							<h4 style="font-weight: 600;color: #009688;font-size: 1.2em;" class="hl-index-name">张无忌</h4>
							<p style="margin: 5px 0 10px;font-size: .9em;color: #afb9c3;s">要想人不知除非己莫为</p>
					</div>
					<fieldset class="layui-elem-field" style="border-color: #393d49">
						<legend></legend>
							<div class="layui-field-box">
								<div class="layui-row">
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo grid-demo-bg1" style="color:#9da6af">帖数</div>
										</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo grid-demo-bg1" style="color:#9da6af">留言</div>
										</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo layui-bg-bg1" style="color:#9da6af">照片</div>
										</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo layui-bg-bg1" style="color:#9da6af">关注</div>
										</div>
								</div>
								<div class="layui-row">
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo grid-demo-bg1"><a href="#" style="color:#9da6af">168</a></div>
										</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo grid-demo-bg1"><a href="#" style="color:#9da6af">32</a></div>
										</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo layui-bg-bg1"><a href="#" style="color:#9da6af">32</a></div>
											</div>
										<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
												<div class="grid-demo layui-bg-bg1"><a href="#" style="color:#9da6af">56</a></div>
										</div>
								</div>
							</div>
						</fieldset>
						<blockquote class="layui-elem-quote" style="color: #009688;width: 50%;background-color: #393d49">个人档</blockquote>
								<div class="layui-row">
									<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
										<div class="grid-demo grid-demo-bg1">
											<a href="#" style="color:#9da6af">
												<i class="layui-icon layui-icon-location" style="font-size: 20px; color: #1E9FFF;"></i>
											</a>
										</div>
									</div>
									<div class="layui-col-xs3 layui-col-sm3 layui-col-md9">
										<div class="grid-demo grid-demo-bg1" style="text-align: left;"><a href="#" style="color:#9da6af">中国河北</a></div>
									</div>
								</div>
								<div class="layui-row">
									<div class="layui-col-xs3 layui-col-sm3 layui-col-md3">
										<div class="grid-demo layui-bg-bg1"><a href="#" style="color:#9da6af">
												<i class="layui-icon layui-icon-user" style="font-size: 20px; color: #1E9FFF;"></i>
											</a></div>
									</div>
									<div class="layui-col-xs3 layui-col-sm3 layui-col-md9">
										<div class="grid-demo layui-bg-bg1" style="text-align: left;">
											<a href="#" style="color:#9da6af">56</a></div>
									</div>
								</div>
							<div class="layui-row">
									<div class="layui-col-xs3 layui-col-sm3 layui-col-md12">
										<div class="grid-demo layui-bg-bg1" style="text-align: left;">
											<p class="hl-index-desc" style="text-indent:2em;padding-left: 2em;padding-right: 2em;color: #9da6af;">
											</p>
										</div>
									</div>
							</div>
		</div>
    </div>
  </div>
   <div class="layui-body">
		<div style="padding: 20px; background-color: #03000122; background-image: url(//i.gtimg.cn/qzone/space_item/orig/1/91921_top.jpg2);    background-repeat: no-repeat;
    background-size: 100% auto;">
			<div class="layui-fluid">
				<div class="layui-row">
					<div class="layui-col-md7" style="padding: 20px;">
						<div class="layui-card">
						</div>
						<div>

							<div class="layui-card-body">
								<div class="layui-col-md9" style="background: white;">
									<label for="L_title" class="layui-form-label" style="text-align: center;color: #333333;">搜索标题</label>
									<div class="layui-input-block">
										<input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
										<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
									</div>
								</div>
								<div class="layui-col-md3" style="">
									<div class="layui-btn-group">
								
										<button type="button" class="layui-btn" style="background-color: #23262e;">
											<i class="layui-icon layui-icon-release"></i>
										</button>
										<button type="button" class="layui-btn index-send"  style="background-color: #23262e;">发布</button>
									    
								   </div>
								</div>
								<form action="" class="layui-form" method="post">
									<div class="layui-row layui-col-space15 layui-form-item">
									</div>
									<div class="layui-row layui-col-space15 layui-form-item">
										<div class="layui-col-md3">
											<label class="layui-form-label" style="background: #ffffff;text-align: center;color: #333333;">类型</label>
											<div class="layui-input-block">
												<select lay-verify="required" name="class" lay-filter="column">
													<option></option>
													<option value="0">提问</option>
													<option value="99">分享</option>
													<option value="100">讨论</option>
													<option value="101">建议</option>
													<option value="168">公告</option>
													<option value="169">动态</option>
												</select>
											</div>
										</div>
									</div>
									<div class="layui-row layui-col-space15 layui-form-item" id="LAY_quiz">
									</div>
								</form>
							</div>
						</div>
						<div class="layui-card" style="background-color: rgba(0,0,0,0);">
							<!-- <div class="layui-card-header">卡片面板</div> -->
							<div class="layui-card-body" id="view" style="min-height: 500px;background-color: rgba(0,0,0,0);" >
								<!-- <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
									<legend>信息流 - 滚动加载</legend>
								</fieldset> -->

								<ul class="flow-default" id="index_flow" ></ul>

							</div>
						</div>
					</div>
					 <div class="layui-col-md2" >
						<div class="layui-card" style="background-color: rgba(0,0,0,0);">
							<div class="layui-card-body">
							 <div class="layui-row">
							   <iframe allowtransparency="true" frameborder="0" width="567" height="165" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=1&z=1&t=1&v=0&d=3&bd=1&k=c0c0c0&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=567&h=100&align=center"></iframe>
							</div>
							</div>
						</div>
						</div> 
					<div class="layui-col-md4" >
					<div class="layui-card">
							<!-- <div style="">
								<header class="header">
									<a class="back" href="javascript:history.back()"></a>
									<h5 class="tit">世界之窗</h5>
								</header>
								<div id="message" class="message" style="overflow: auto;
						    height: 500px;">
						
									<div class="send">
										<div class="time">05/22 06:30</div>
										<div class="msg">
											<img src="../img/touxiang.png" alt="" />
											<p><i class="msg_input"></i>你好在不在呀，妹子！</p>
										</div>
									</div>
									
								</div>
								<div class="footer">
									<div style="width: 60%;float: left;margin-left: 20%;">
										<input type="text" id="socket_console" />
									</div>
									<div style="width: 18%; float: left;">
										<p> 发送</p>
									</div>
								</div>
							</div> -->
							
							<div class="layui-card-header">我的照片</div>
							<div class="layui-card-body">
								 <ul class="layui-timeline">
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2016年，layui 首个版本发布</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2015年，layui 孵化</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>
										</div>
									</li>
								</ul> 
							</div>
						</div>
					</div>
					<div class="layui-col-md3" style="margin-top: 2%;">
						<div class="layui-card">
							<div class="layui-card-header">我的帖子</div>
							<div class="layui-card-body">
								<!-- <ul class="layui-timeline">
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2016年，layui 首个版本发布</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">2015年，layui 孵化</div>
										</div>
									</li>
									<li class="layui-timeline-item">
										<i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
										<div class="layui-timeline-content layui-text">
											<div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>
										</div>
									</li>
								</ul> -->
							</div>
						</div>
						
					</div>
				</div>
				<div class="layui-row">
				</div>
			</div>
		</div>
	</div>
</div>
		
	</body>

	<script id="demo2" type="text/html">
		<div class="layui-card" style="padding: 30px;">
		<div class="panel-body layadmin-homepage-shadow">
		            <a href="javascript:;" class="media-left">
									<div style="float: left;">
		              <img src="{{d.headUrl}}" height="55px" width="55px" style="border-radius: 50%;"> 
									</div>
											<span>
												<div style="height: 29px;">
														<font style="font-size: 20px;margin-left: 10px;"> {{d.username}}</font>
													<i class="iconfont icondianzan iconfont-color" style="margin-left: 80%;"></i>
												</div>
												<div>
													<font  style="font-size: 15px;margin-left: 10px;    color: #71706f;">{{d.createDate}}</font>
												</div>	
											</span>
		            </a>
		            <div class="media-body" style="margin-left: 63px;margin-top: 20px;">
		              <div class="pad-btm">
		                <p class="fontColor" style="    font-size: 20px;">
											{{d.title}}
										</p>
		                <p class="min-font">
		                  <span class="layui-breadcrumb" lay-separator="-">
		                    <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
		                    <a href="javascript:;">从移动</a>
		                    <a href="javascript:;">11分钟前</a>
		                  </span>
		                </p>         
		              </div>
		              <p style="color: #666;">{{d.content}}</p>
		              <div class="media">
		                <div class="media-right" style="float: right;    padding-top: 35px;	">
		                  <ul class="list-inline">
		                    <li style="float: left;margin-right: 40px;">
		                      <i class="iconfont icondianzan iconfont-color"></i>
		                      <span style="font-size: 15px">{{d.like}}</span>
		                    </li>
		                    <li style="float: left;margin-right: 30px;">
		                      <i class="iconfont iconpinglun iconfont-color"></i>
		                      <span style="font-size: 15px">{{d.collect}}</span>
		                    </li>
							<li style="float: left;margin-right: 20px;">
		                      <i class="iconfont iconarrow- iconfont-color"></i>
		                    </li>
		                  </ul>
		                </div>
		                <div class="media-left" style="height: 60px;">
		                
		                </div>
		              </div>
						<hr>
		              <div class="media-list">
		                <div class="media-item" style="height: 50px;">
		                  <a href="javascript:;" class="media-item-left">
		                    <img class="img-xs" src="/static/common/img/test.jpg" style="float: left;	width: 40px;border-radius: 50%;height: 40px;"> 
		                  </a>
		                  <div class="media-text">
		                    <div>
		                        <a href="javascript:;" style="margin-left: 10px;">胡歌</a>
		                        <span style="color: #71706f;"> 3月21日 19:56</span>
		                    </div>
		                    <div style="margin-left: 50px;color: #4d5252;">一次难忘更难得的拍摄经历 谢谢</div>
		                  </div>
		                </div>
		               <a href="javascript:;" class="layui-btn">更多</a>
		              </div>
		            </div>
		          </div>
				</div>
		</script>
<!--   <ul class="list-inline" style="padding-top: 12px;"> -->
<!-- 		                    <li style="float: left;margin-right: 10px;"> -->
<!-- 		                      <a href="javascript:;"> -->
<!-- 		                       <img class="img-xs" src="img/photo.png" style="width: 40px;border-radius: 50%;height: 40px;">  -->
<!-- 		                      </a> -->
<!-- 		                    </li> -->
<!-- 		                    <li  style="float: left;margin-right: 10px;"> -->
<!-- 		                      <a href="javascript:;"> -->
		                      
<!-- 		                        <img class="img-xs" src="img/photo.png"  style="width: 40px;border-radius: 50%;height: 40px;">  -->
<!-- 		                      </a> -->
<!-- 		                    </li> -->
<!-- 		                    <li  style="float: left;margin-right: 10px;"> -->
<!-- 		                      <a href="javascript:;"> -->
		                        
<!-- 		                        <img class="img-xs" src="img/photo.png"  style="width: 40px;border-radius: 50%;height: 40px;">  -->
<!-- 		                      </a> -->
<!-- 		                    </li> -->
<!-- 		                    <li > -->
<!-- 		                      <a href="javascript:;" class="" style="    float: left;margin-top: 12px;"> -->
<!-- 		                        14+ -->
<!-- 		                      </a> -->
<!-- 		                    </li> -->
<!-- 		                  </ul> -->
</html>
