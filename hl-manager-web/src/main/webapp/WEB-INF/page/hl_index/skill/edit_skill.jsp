<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>skill</title>
<script type="text/javascript"
	src="${ctx}/static/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/common/ajax_server.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/css/iconfont/iconfont.css">
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/index/skill/_skill_open.js"></script>
</head>
<body>
  <div>
		<fieldset class="layui-elem-field layui-field-title" style="">
 			 <legend></legend>
		</fieldset>
	    <label class="layui-form-label" ><span id="skill-type" class="skill-type"></span></label>
	    <div class="layui-input-block" >
	      <textarea style="overflow-y: auto;" placeholder="请输入内容" id="skill_stick_editor"  class="layui-textarea" name="userDetail"></textarea>
	    </div>
	     <div class="layui-input-block" >
	     <button type="button" style="background-color: #393d49;" class="layui-btn send_skill">更新</button>
	    </div>
 </div>
</body>
</html>