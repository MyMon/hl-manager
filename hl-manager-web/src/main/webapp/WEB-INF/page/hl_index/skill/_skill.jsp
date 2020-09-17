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
            margin: 0px;
/*             text-align: center; */
        }
		.box{
			    width: 1452px;
				margin-left: auto;
				margin-right: auto;
		}
        .content {
            margin: 0 auto;
/*             margin-top: 100px; */
			    float: right;
				min-width: 70%;
 			    max-width: 70%; 
			    box-shadow: 0 0 20px 10px rgba(220,220,220,.3);
			    padding: 27px;
			    width: 70%;
        }
        .content h2 {
           /*  font-size: 18px;
            color:rgba(0,0,0,.87);
            height: 600px;
            line-height: 600px;
            background-color: deepskyblue; */
        }
        .content h4 {
         /*    font-size: 16px;
            color:rgba(0,0,0,.87);
            background-color: lightskyblue;
            height: 400px;
            line-height: 400px;
 */
        }
       /*  .content p{
            font-size: 12px;
            color:#666;
            height: 400px;
            line-height: 400px;
            background-color: skyblue;
        } */
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
            color: #009688;
  		    font-size: 20px;
        }
		#nav ul li{
			max-width: 300px;
		}
		.two-ul{
			display:none
		}
		#open-button{
			position: fixed;
		    z-index: 1000;
		    margin: 1em;
		    padding: 0;
		    width: 100px;
		    height: 35px;
		    text-indent: 1.5em;
		    background: 0 0;
		    top: 10px;
		    left: 150px;
		    outline: 0;
		    cursor: pointer;
		    color: #fff;
		    border: 1px solid rgba(255,255,255,.6);
		    border-radius: 3px;
		    font-size: 12px;
		    text-transform: uppercase;
		    line-height: 35px;
		    padding-right: 13px;
		    text-align: center;
		}
		.menu-button-index{
		position: fixed;
		    z-index: 1000;
		    margin: 1em;
		    padding: 0;
		    width: 100px;
		    height: 35px;
		    text-indent: 1.5em;
		    background: 0 0;
		    top: 10px;
		    left: 10px;
		    outline: 0;
		    cursor: pointer;
		    color: #fff;
		    border: 1px solid rgba(255,255,255,.6);
		    border-radius: 3px;
		    font-size: 12px;
		    text-transform: uppercase;
		    line-height: 35px;
		    padding-right: 13px;
		    text-align: center;
		}
		
		::-webkit-scrollbar { /*滚动条整体样式*/
    width: 6px !important;; /*高宽分别对应横竖滚动条的尺寸*/
    height: 6px !important;;
    background: #ffffff !important;;
    cursor: pointer !important;

}

::-webkit-scrollbar-thumb { /*滚动条里面小方块*/
    border-radius: 5px !important;
    -webkit-box-shadow: inset 0 0 5px rgba(240, 240, 240, .5) !important;;
    background: rgba(63, 98, 131, 0.8) !important;;
    cursor: pointer !important;
}

::-webkit-scrollbar-track { 
    -webkit-box-shadow: inset 0 0 5px rgba(240, 240, 240, .5) !important;;
    border-radius: 0 !important;;
    background: rgba(240, 240, 240, 0.5) !important;;
    cursor: pointer !important;
}
		
/* 		body .edit-skill-class .layui-layer-min{background:#c00; color:#fff; border: none;} */
		body .edit-skill-class .layui-layer-min cite{background-color:#ffffff;}
		body .edit-skill-class .layui-layer-btn{border-top:1px solid #E9E7E7}
		body .edit-skill-class .layui-layer-btn a{background:#333;}
		body .edit-skill-class .layui-layer-btn .layui-layer-btn1{background:#999;}
    </style> 
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${ctx}/static/common/js/layui/css/layui.css"/> --%>
<link rel="stylesheet" type="text/css" 
	href="${ctx}/static/common/css/index/skill/player.css"/>
<script type="text/javascript" src="/static/common/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/layui/layui.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/common/ajax_server.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/jquery.marquee.min.js"></script>
<script type="text/javascript"
	src="${ctx}/static/common/js/index/skill/_skill.js"></script>
</head>
<body>
 
<!-- <ul class="layui-nav" lay-filter="skill-nav" style="text-align: center;"> -->
<!--   <li class="layui-nav-item"><a href="/hl_index/hl_index">首页</a></li> -->
<!--   <li class="layui-nav-item"> -->
<!--   	<a href="javascript:void(0)" class="skill-edit">编辑</a> -->
<!--   </li> -->
<!-- </ul> -->
	<div class="skill_type" style="background: url('/static/common/img/44.gif') center center / cover no-repeat rgb(34, 34, 34);text-align: center;height: 500px;background-color: #606060; widows: 100%; font-size: 50px;line-height: 500px;letter-spacing: -1px;
    font-weight: 700;
    color: #fff;
    -webkit-animation: fade-in-down 1s;
    animation: fade-in-down 1s both;
    -webkit-animation-delay: .6s;
    animation-delay: .5s;
    text-shadow: 0 3px 6px rgba(0,0,0,.3);">${skillType}</div>
	<button class="menu-button-index" id="index-button"><a href="/hl_index/hl_index">首页</a></button>
	<button class="menu-button skill-edit" id="open-button">编辑文章</button>
	<div class="box">
		<div>
			<div class="right-nav" id="right-nav">
				<blockquote class="layui-elem-quote">导航</blockquote>
				<div id="nav"></div>
			</div>
			<div class="content" id="article">
				
			</div>
		</div>
</div>
<div id="QPlayer">
<div id="pContent">
	<div id="player">
		<span class="cover"></span>
		<div class="ctrl">
			<div class="musicTag marquee">
				<strong>歌名</strong>
				<span> - </span>
				<span class="artist">歌手</span>
			</div>
			<div class="progress">
				<div class="timer left">0:00</div>
				<div class="contr">
					<div class="rewind icon"></div>
					<div class="playback icon"></div>
					<div class="fastforward icon"></div>
				</div>
				<div class="right">
					<div class="liebiao icon"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="ssBtn">
	        <div class="adf"></div>
    </div>
</div>
<ol id="playlist">
	<div class="add-player">
	    <div class="add-player-icon">+</div>
    </div>
</ol>

</div>
<script type="text/javascript">
var	playlist = [
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/1.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	{title:"Gravity",artist:"Jessica",mp3:"/static/common/video/2.mp3",cover:"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106",},
	];
	  var isRotate = true;
	  var autoplay = false;
	  function bgChange(){
			var lis= $('.lib');
			for(var i=0; i<lis.length; i+=2)
			lis[i].style.background = 'rgba(246, 246, 246, 0.5)';
		}
		window.onload = bgChange;
</script>
	<script type="text/javascript"
	src="${ctx}/static/common/js/index/skill/player.js"></script>
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
		        $("#open-button").css('border','1px solid rgb(0, 150, 136)');
		        $("#open-button").css('color','#009688');
			        $("#open-button").css('left','10px');
		    } else {
		         document.getElementsByClassName("right-nav")[0].style = ""
		        	 $("#open-button").css('border','1px solid rgba(255,255,255,.6)');
			        $("#open-button").css('color','#fff');
			        $("#open-button").css('left','150px');
		    }
		} 
		
	})
</script>

</body>
</html>