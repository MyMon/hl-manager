<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hl</title>
<%-- <link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/style.css"> --%>
<%-- <link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/admin.css"> --%>
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/login.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/js/layui/css/layui.css">
<script type="text/javascript" src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/common/ajax_server.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/login_index.js"></script>
<%-- <script type="text/javascript" src="${ctx}/static/common/js/vector.js"></script> --%>
<script type="text/javascript" src="${ctx}/static/common/js/layui/layui.js"></script>
<!-- Jqarticle Js -->
<script type="text/javascript" src="${ctx}/static/common/js/jparticle.min.js"></script>	
<!-- ZylVerificationCode Js-->
<script type="text/javascript" src="${ctx}/static/common/js/zylVerificationCode.js"></script>
<style>
			/* 覆盖原框架样式 */
			.layui-elem-quote{background-color: inherit!important;}
			.layui-input, .layui-select, .layui-textarea{background-color: inherit; padding-left: 30px;}
</style>
</head>
<body>
		<!-- Head -->
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-sm12 layui-col-md12 zyl_mar_01">
					<blockquote class="layui-elem-quote">Mr.Rainbow·简约后台登陆界面</blockquote>
				</div>
			</div>
		</div>
		<!-- Head End -->
		<!-- Carousel -->
		<div class="layui-row">
			<div class="layui-col-sm12 layui-col-md12">
				<div class="layui-carousel zyl_login_height" id="zyllogin" lay-filter="zyllogin">
					<div carousel-item="">
						<div>
							<div class="zyl_login_cont"></div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!-- Carousel End -->
		<!-- Footer -->
		<div class="layui-row">
			<div class="layui-col-sm12 layui-col-md12 zyl_center zyl_mar_01">
				© 2019 - 简约后台登陆界面 || 简约后台登陆界面版权所有
			</div>
		</div>
		<!-- Footer End -->
		<!-- LoginForm -->
		<div class="zyl_lofo_main">
			<fieldset class="layui-elem-field layui-field-title zyl_mar_02" style="margin-top: 20px;">
				<legend>欢迎登陆 - 彩虹先生管理平台</legend>
			</fieldset>
			<div class="layui-row layui-col-space15" style="    margin: auto;padding-left: 30px;padding-right: 30px;">
				<form class="layui-form zyl_pad_01" action="user/toLogin" method="post">
					<div class="layui-col-sm12 layui-col-md12">
						<div class="layui-form-item">
							<input type="text" name="userName" lay-verify="required|userName" autocomplete="off" placeholder="账号" class="layui-input">
							<i class="layui-icon layui-icon-username zyl_lofo_icon"></i>
						</div>
					</div>
					<div class="layui-col-sm12 layui-col-md12">
						<div class="layui-form-item">
							<input type="password" name="passWord" lay-verify="required|passWord" autocomplete="off" placeholder="密码" class="layui-input">
							<i class="layui-icon layui-icon-password zyl_lofo_icon"></i>
						</div>
					</div>
					<div class="layui-col-sm12 layui-col-md12">
						<div class="layui-row">
							<div class="layui-col-xs4 layui-col-sm4 layui-col-md4">
								<div class="layui-form-item">
									<input type="text" name="vercode" id="vercode" lay-verify="required|vercodes" autocomplete="off" placeholder="验证码" class="layui-input" maxlength="4">
									<i class="layui-icon layui-icon-vercode zyl_lofo_icon"></i>
								</div>
							</div>
							<div class="layui-col-xs4 layui-col-sm4 layui-col-md4">
								<div class="zyl_lofo_vercode zylVerCode" onclick="zylVerCode()"></div>
							</div>
							<div class="layui-form-item" style="height: 50px;">
							  <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
							  <a href="http://localhost:8081/user/register" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码1？</a>
							</div>
						</div>
					</div>
					<div class="layui-col-sm12 layui-col-md12">
						<button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="LAY-user-login-submit">立即登录</button>
					</div>
				</form>
			</div>
		</div>
		<!-- LoginForm End -->
</body>

</html>