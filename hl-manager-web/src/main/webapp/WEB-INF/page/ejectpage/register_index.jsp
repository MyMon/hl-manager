<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hl</title>
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/style.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/admin.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/css/register.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/common/js/layui/css/layui.css">
<script type="text/javascript" src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/ejectpage/register.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/common/ajax_server.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/vector.js"></script>
<script type="text/javascript" src="${ctx}/static/common/js/identigying.js"></script>
</head>
<body>
<body>
  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="">
    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>HL</h2>
        <p>开始注册吧</p>
      </div>
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
          <input type="text" name="userName" id="LAY-user-login-userName" lay-verify="userName" placeholder="用户名" class="layui-input">
        </div>
       
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="passWord" id="LAY-user-login-password" lay-verify="pass" placeholder="密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-repass"></label>
          <input type="password" name="repass" id="LAY-user-login-repass" lay-verify="_pass" placeholder="确认密码" class="layui-input">
        </div>
         <div class="layui-form-item">
          <div class="layui-row">
            <div class="layui-col-xs7">
              <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
              <input type="text" name="vercode" id="LAY-user-login-vercode" lay-verify="vercode" placeholder="验证码" class="layui-input">
            </div>
            <div class="layui-col-xs5">
              <div style="margin-left: 10px;">
              	<div class="register_identigying_code">
					<canvas id="identigying_canvas" width="128px" height="40px"></canvas>
				</div>
              </div>
            </div>
          </div>
        </div>
        <div class="layui-form-item" style="height: 40px;">
          <input type="checkbox" name="agreement" lay-skin="primary" title="同意用户协议" checked>
        </div>
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="begin_register">注 册</button>
        </div>
        <div class="layui-trans layui-form-item layadmin-user-login-other">
          <label>社交账号注册</label>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>
          
          <a href="http://localhost:8081/test" id="to_login" class="layadmin-user-jump-change layadmin-link layui-hide-xs">用已有帐号登入</a>
          <a href="login.html" class="layadmin-user-jump-change layadmin-link layui-hide-sm layui-show-xs-inline-block">登入</a>
        </div>
      </div>
    </div>
    
    <div class="layui-trans layadmin-user-login-footer">
      
      <p>© 2019 HL.com</p>
      <p>
        <span>联系作者</span>
       
      </p>
    </div>

  </div>
</body>

</html>