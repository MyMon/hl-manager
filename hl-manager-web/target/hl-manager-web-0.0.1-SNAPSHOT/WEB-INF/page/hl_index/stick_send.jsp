<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布</title>
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
	src="${ctx}/static/common/js/index/stick/_stick.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/iconfont/iconfont.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/index/index.css"></link>
</head>
<body>
<div>
	             
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>HL</legend>
</fieldset>
 
<form class="layui-form" action="">
  <div class="layui-form-item">
    <label class="layui-form-label">标题</label>
    <div class="layui-input-inline">
      <input type="text" name="title" lay-verify="required" lay-reqtext="标题岂能为空？" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">类型</label>
    <div class="layui-input-inline">
      <select name="stickType" lay-filter="aihao">
        <option value=""></option>
        <option value="0" selected="">普通</option>
        <option value="1" >讨论</option>
        <option value="2">问题</option>
        <option value="3">分享</option>
        <option value="4">提问</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">赏金</label>
    <div class="layui-input-inline">
      <input type="text" name="stickMoney" placeholder="0" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux">$</div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">公开</label>
    <div class="layui-input-block">
      <input type="checkbox" name="close" lay-skin="switch" lay-text="公开|不公开">
<!--       <input type="hidden" name="userId" > -->
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">编辑器</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_stick_editor"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button type="submit" class="layui-btn" lay-submit="" lay-filter="send_stick_button">发布</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>

</div>
</body>
</html>