<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/common/ajax_server.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/layui.css">
	<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/index/user/_user.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/global.css">
	<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/iconfont/iconfont.css">
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/index/user/_user.js"></script>
</head>
<body>
  <div>
		<fieldset class="layui-elem-field layui-field-title" style="">
 			 <legend></legend>
		</fieldset>
	<form class="layui-form" action="" lay-filter="edit_user">
		<div class="layui-form-item" id="upload_img">
		    <label class="layui-form-label">头像</label>
			  <div class="layui-inline" id="uploadView">
			    <img src="/static/common/img/test.jpg" class="layui-circle hl-user-po"  style="max-width: 196px width: 100px;height: 100px;">
			 	<i class="iconfont iconyoujiantou" style="margin-left: 30px;font-size: 25px;"></i>
			 	<img src="/static/common/img/test.jpg"  class="layui-circle hl-user-before"  alt="上传成功后渲染" style="margin-left: 40px;max-width: 196px width: 100px;height: 100px;">
			  	<input type="hidden" name="headUrl">
			  </div>
	  	</div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">登录名</label>
	    <div class="layui-input-inline">
	      <input type="text" name="userName" lay-verify="user_name"  disabled autocomplete="off" placeholder="请输入登录名" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input type="password" name="passWord" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">姓名</label>
	    <div class="layui-input-inline">
	      <input type="text" name="name" lay-verify="name" autocomplete="off" placeholder="请输入姓名" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">创建时间</label>
	    <div class="layui-input-inline">
	      <input type="text" name="createDate" pattern="yyyy-MM-dd HH:mm:ss" lay-verify="date" autocomplete="off" value="2020.03.28" disabled class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">简介</label>
	    <div class="layui-input-inline" style="width: 60%;height: 350px">
	      <textarea placeholder="请输入内容" style="height: 360px" class="layui-textarea" name="userDetail"></textarea>
	    </div>
	  </div>
	 
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	   	  <input type="hidden" name="id">
	      <button type="button" class="layui-btn layui-btn-normal" id="LAY-component-form-getval">撤销</button>
	      <button type="submit" class="layui-btn" lay-submit="" lay-filter="submit">提交</button>
	    </div>
	  </div>
	</form>
 </div>
</body>
</html>