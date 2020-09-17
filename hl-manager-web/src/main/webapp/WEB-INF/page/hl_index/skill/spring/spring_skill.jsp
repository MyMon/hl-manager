<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring</title>
   <style>
        html, body {
            width: 100%;
            height: 100%;
            box-sizing: border-box;
            text-align: center;
        }
		.box{
			    width: 1111px;
				margin-left: auto;
				margin-right: auto;
		}
        .content {
            margin: 0 auto;
            margin-top: 100px;
			    float: right;
			min-width: 70%;
        }
        .content h2 {
            font-size: 18px;
            color:rgba(0,0,0,.87);
            height: 600px;
            line-height: 600px;
            background-color: deepskyblue;
        }
        .content h4 {
            font-size: 16px;
            color:rgba(0,0,0,.87);
            background-color: lightskyblue;
            height: 400px;
            line-height: 400px;

        }
        .content p{
            font-size: 12px;
            color:#666;
            height: 400px;
            line-height: 400px;
            background-color: skyblue;
        }
        .right-nav {
			text-align: left;
			float: left;
			overflow-y: auto;
			height: 100%;
        }

        .right-nav p {
            color:#333;
        }

        .right-nav ul {
            padding-left: 0;
        }

        .right-nav li{
            list-style: none;

        }
        .right-nav a {
            color:#999;
            padding-left:6px ;
            border-left: 2px solid #999;
            display: inline-block;
            margin-bottom: 4px;
            text-decoration: none;
        }

        .right-nav .level2_a {
            color:#999;
            padding-left:20px ;
            border-left: 2px solid #999;
        }

        .right-nav a:hover{
            color:#2277da;
        }

        .right-nav .c{
            border-left: 2px solid #2277da;
            color:#2277da;
        }
		#nav ul li{
			max-width: 300px;
		}
		.two-ul{
			display:none
		}
    </style>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/common/js/layui/css/layui.css"/>
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
</head>
<body>
 
<ul class="layui-nav">
  <li class="layui-nav-item"><a href="">首页</a></li>
  <li class="layui-nav-item layui-this">
    <a href="javascript:;">产品</a>
    <dl class="layui-nav-child">
      <dd><a href="">选项1</a></dd>
      <dd><a href="">选项2</a></dd>
      <dd><a href="">选项3</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">大数据</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;">解决方案</a>
    <dl class="layui-nav-child">
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd class="layui-this"><a href="">选中项</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">社区</a></li>
</ul>
	<div style="height: 400px;background-color: #606060; widows: 100%; font-size: 266px;">Spring</div>
	
	<div class="box">
		<div>
			<div class="right-nav" id="right-nav">
				<p>导航</p>
				<div id="nav"></div>
			</div>
			<div class="content" id="article">
				<h1>anchor-nav</h1>
				<h2>美食</h2>
				<h4>鱼香肉丝</h4>
				<h4>油焖小龙虾</h4>
				<div>酸菜大苏打阿斯顿阿斯顿鱼</div>
				<h2>人文</h2>
				<h4>蜀绣</h4>
				<p>陶瓷</p>
				<h4>丝绸</h4>
				<p>油画</p>
				<h2>影视</h2>
				<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎的撒阿斯顿阿德阿斯顿阿三打的阿斯顿阿斯顿 </p>
					<h2>影视</h2>
				<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h2>影视</h2>
				<h4>风雨哈dsa dsa das das sad asd as  sda 佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h2>影视</h2>
				<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h2>影视</h2>
				<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h2>影视</h2>
				<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
					<h4>风雨哈佛路</h4>
				<h4>泰坦尼克号</h4>
				<p>肖申克的救赎</p>
				
			</div>
			
		</div>
</div>
<script type="text/javascript" src="/static/common/js/jquery.min.js"></script>
<script>

    var h4_length = [];
    window.onload = function () {

        /* 1、创建右侧导航栏*/
        var html = ['<ul>'];
        var h2 = document.querySelectorAll('#article h2');
        for(var i = 0; i < h2.length; i++) {
            var id = 'd' + i;
            var el = h2[i];
            el.id = id;
            var h4_num = 0; //记录该一级菜单下的二级菜单的个数
            // 1.1 生成一级目录
            html.push('<li><a href="#'+ id + '" id="'+ 'a' + i + i +'">' + (i + 1) + '.' + el.innerHTML + '</a></li>');
            // 1.2 生成二级目录
            /* 生成二级目录需要从两个h2标签中找到所有的h4标签*/
            var parent = h2[i].parentElement;
            var element = h2[i];
			var count=0;
            while(1) {
                if( (element == parent.lastElementChild) || (element == h2[i+1])) {
					if(count!=0 &&count!=1){
						html.push("</ul>");
					}
                    break; //搜索结束
                }
                element = element.nextElementSibling;
                // console.log(element.tagName.toLowerCase());
                if(element.tagName.toLowerCase() == 'h4') {
					count++;
					if(count==1){
						html.push('<ul class="two-ul">');
					}
                    element.id = 'd' + i + h4_num;
                    html.push('<li  class="two-li"><a href="#' + element.id + '" id="a' + i + '' + i + ''+ h4_num + '' + h4_num + '" class="level2_a">' + (i+1) + '.' + (h4_num+1)+ ' '+element.innerText + '</a></li>');
                    h4_num = h4_num + 1;
                }
            }
            h4_length.push(h4_num);
        }
        html.push('</ul>');
        var nav = document.getElementById('nav');
        nav.innerHTML = html.join('\n');

        /* 2、点击时激活右侧导航*/
        $('#nav a').click(function(e){
            setTimeout(function(){
                $('#nav a').removeClass("c");
				//$("#nav ul.a").addClass("two-ul");
				/* for(var i=0;i<_ul_a.length;i++){
					_ul_a[i].setAttribute("class","two-ul");
				} */
				
                if( e.target.getAttribute("class") == null) {
                    e.target.setAttribute("class", "c");
                 } else {
                   e.target.setAttribute("class", e.target.getAttribute("class")+ ' '+"c");
                }
				var is_ul=e.target.parentElement.nextElementSibling;
				if(is_ul!=undefined &&is_ul.getAttribute('class')=='two-ul'){
					is_ul.setAttribute("class","a");
				}
            },0);
        });

    }

    /* 3、滚动时激活右侧导航 */
    $(function(){
        $(window).scroll(function(){
            var wst = $(window).scrollTop(); //滚动条距离顶部距离页面顶端的值
            var h2 = document.querySelectorAll('#article h2');
            for(var i=0; i<h2.length; i++){
			
                if($("#d"+i).offset().top <= wst){
                    $('#nav a').removeClass("c");
                    if( !$('#a'+i+i).hasClass("c")) {
                        $('#a'+i+i).addClass("c");
						 var is_ul=$('#a'+i+i).parent().next();
						 if(is_ul.hasClass('two-ul')){
							 is_ul.removeClass("two-ul");
						 }
                    }
                }
                for(var j = 0; j < h4_length[i]; j++){
                    if($("#d"+i+j).offset().top <= wst){
                        $('#nav a').removeClass("c");
                        $('#a'+i+i+j+j).addClass("c");
                    }
                }
            }
        });

    });
 window.οnlοad=
	$(function(){
		
			console.log(1);
		var oDiv = document.getElementById("nav"),
		    H = 0,
		    Y = oDiv        
		while (Y) {
		    H += Y.offsetTop; 
		    Y = Y.offsetParent;
		}
		 window.onscroll = function()
		{
		    var s = document.body.scrollTop || document.documentElement.scrollTop
		    if(s>H) {
		        document.getElementsByClassName("right-nav")[0].style = "    position: fixed;top: 0;z-index: 666;"
		    } else {
		         document.getElementsByClassName("right-nav")[0].style = ""
		    }
		} 
		
	})
</script>

</body>
</html>