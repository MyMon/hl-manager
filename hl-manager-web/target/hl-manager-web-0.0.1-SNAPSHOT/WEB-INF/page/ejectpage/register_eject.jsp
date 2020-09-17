<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/ejectpage/register_eject.css">
<script type="text/javascript"
	src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/identigying.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/ejectpage/register.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/common/ajax_server.js"></script>
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>用户注册</legend>
	</fieldset>
	<form class="layui-form register_form" action="" lay-filter="example">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名:</label>
			<div class="layui-input-inline">
				<input type="text" name="name" lay-verify="name" autocomplete="off"
					placeholder="请输入用户名" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">请输入2~5位名称</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">登录名:</label>
			<div class="layui-input-inline">
				<input type="text" name="userName" lay-verify="userName"
					autocomplete="off" placeholder="(支持A~Z,a~z,0~9)"
					class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">请输入4~9位登录名</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码:</label>
			<div class="layui-input-inline">
				<input type="password" name="passWord" lay-verify="pass"
					placeholder="请输入密码" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">请输入6~12位密码</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">确认密码:</label>
			<div class="layui-input-inline">
				<input type="password" name="passWord_" lay-verify="pass_"
					placeholder="请输入确认密码" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">重复以上密码</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">验证码:</label>
			<div class="layui-input-inline">
				<input type="text" name="identigying" lay-verify="identigying"
					autocomplete="off" placeholder="请输入验证码"
					class="layui-input register_identigying">
				<div class="register_identigying_code">
					<canvas id="identigying_canvas" width="72px" height="39px"></canvas>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block register_btn_div">
				<button class="layui-btn register_btn layui-bg-blue" lay-submit=""
					lay-filter="begin_register">开始注册</button>
			</div>
		</div>
	</form>
</body>
</html>