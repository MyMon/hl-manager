/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-05-01 10:34:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.page.hl_005findex.skill;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class _005fskill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Spring</title>\r\n");
      out.write("   <style>\r\n");
      out.write("        html, body {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            height: 100%;\r\n");
      out.write("            box-sizing: border-box;\r\n");
      out.write("            margin: 0px;\r\n");
      out.write("/*             text-align: center; */\r\n");
      out.write("        }\r\n");
      out.write("\t\t.box{\r\n");
      out.write("\t\t\t    width: 1452px;\r\n");
      out.write("\t\t\t\tmargin-left: auto;\r\n");
      out.write("\t\t\t\tmargin-right: auto;\r\n");
      out.write("\t\t}\r\n");
      out.write("        .content {\r\n");
      out.write("            margin: 0 auto;\r\n");
      out.write("/*             margin-top: 100px; */\r\n");
      out.write("\t\t\t    float: right;\r\n");
      out.write("\t\t\t\tmin-width: 70%;\r\n");
      out.write(" \t\t\t    max-width: 70%; \r\n");
      out.write("\t\t\t    box-shadow: 0 0 20px 10px rgba(220,220,220,.3);\r\n");
      out.write("\t\t\t    padding: 27px;\r\n");
      out.write("\t\t\t    width: 70%;\r\n");
      out.write("        }\r\n");
      out.write("        .content h2 {\r\n");
      out.write("           /*  font-size: 18px;\r\n");
      out.write("            color:rgba(0,0,0,.87);\r\n");
      out.write("            height: 600px;\r\n");
      out.write("            line-height: 600px;\r\n");
      out.write("            background-color: deepskyblue; */\r\n");
      out.write("        }\r\n");
      out.write("        .content h4 {\r\n");
      out.write("         /*    font-size: 16px;\r\n");
      out.write("            color:rgba(0,0,0,.87);\r\n");
      out.write("            background-color: lightskyblue;\r\n");
      out.write("            height: 400px;\r\n");
      out.write("            line-height: 400px;\r\n");
      out.write(" */\r\n");
      out.write("        }\r\n");
      out.write("       /*  .content p{\r\n");
      out.write("            font-size: 12px;\r\n");
      out.write("            color:#666;\r\n");
      out.write("            height: 400px;\r\n");
      out.write("            line-height: 400px;\r\n");
      out.write("            background-color: skyblue;\r\n");
      out.write("        } */\r\n");
      out.write("        .right-nav {\r\n");
      out.write("\t\t\ttext-align: left;\r\n");
      out.write("\t\t\tfloat: left;\r\n");
      out.write("\t\t\toverflow-y: auto;\r\n");
      out.write("\t\t\theight: 100%;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav p {\r\n");
      out.write("            color:#333;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav ul {\r\n");
      out.write("            padding-left: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav li{\r\n");
      out.write("            list-style: none;\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("        .right-nav a {\r\n");
      out.write("            color:#999;\r\n");
      out.write("            padding-left:6px ;\r\n");
      out.write("            border-left: 2px solid #999;\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            margin-bottom: 4px;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav .level2_a {\r\n");
      out.write("            color:#999;\r\n");
      out.write("            padding-left:20px ;\r\n");
      out.write("            border-left: 2px solid #999;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav a:hover{\r\n");
      out.write("            color:#2277da;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .right-nav .c{\r\n");
      out.write("            border-left: 2px solid #2277da;\r\n");
      out.write("            color: #009688;\r\n");
      out.write("  \t\t    font-size: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\t\t#nav ul li{\r\n");
      out.write("\t\t\tmax-width: 300px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.two-ul{\r\n");
      out.write("\t\t\tdisplay:none\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t#open-button{\r\n");
      out.write("\t\t\tposition: fixed;\r\n");
      out.write("\t\t    z-index: 1000;\r\n");
      out.write("\t\t    margin: 1em;\r\n");
      out.write("\t\t    padding: 0;\r\n");
      out.write("\t\t    width: 100px;\r\n");
      out.write("\t\t    height: 35px;\r\n");
      out.write("\t\t    text-indent: 1.5em;\r\n");
      out.write("\t\t    background: 0 0;\r\n");
      out.write("\t\t    top: 10px;\r\n");
      out.write("\t\t    left: 150px;\r\n");
      out.write("\t\t    outline: 0;\r\n");
      out.write("\t\t    cursor: pointer;\r\n");
      out.write("\t\t    color: #fff;\r\n");
      out.write("\t\t    border: 1px solid rgba(255,255,255,.6);\r\n");
      out.write("\t\t    border-radius: 3px;\r\n");
      out.write("\t\t    font-size: 12px;\r\n");
      out.write("\t\t    text-transform: uppercase;\r\n");
      out.write("\t\t    line-height: 35px;\r\n");
      out.write("\t\t    padding-right: 13px;\r\n");
      out.write("\t\t    text-align: center;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.menu-button-index{\r\n");
      out.write("\t\tposition: fixed;\r\n");
      out.write("\t\t    z-index: 1000;\r\n");
      out.write("\t\t    margin: 1em;\r\n");
      out.write("\t\t    padding: 0;\r\n");
      out.write("\t\t    width: 100px;\r\n");
      out.write("\t\t    height: 35px;\r\n");
      out.write("\t\t    text-indent: 1.5em;\r\n");
      out.write("\t\t    background: 0 0;\r\n");
      out.write("\t\t    top: 10px;\r\n");
      out.write("\t\t    left: 10px;\r\n");
      out.write("\t\t    outline: 0;\r\n");
      out.write("\t\t    cursor: pointer;\r\n");
      out.write("\t\t    color: #fff;\r\n");
      out.write("\t\t    border: 1px solid rgba(255,255,255,.6);\r\n");
      out.write("\t\t    border-radius: 3px;\r\n");
      out.write("\t\t    font-size: 12px;\r\n");
      out.write("\t\t    text-transform: uppercase;\r\n");
      out.write("\t\t    line-height: 35px;\r\n");
      out.write("\t\t    padding-right: 13px;\r\n");
      out.write("\t\t    text-align: center;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t::-webkit-scrollbar { /*滚动条整体样式*/\r\n");
      out.write("    width: 6px !important;; /*高宽分别对应横竖滚动条的尺寸*/\r\n");
      out.write("    height: 6px !important;;\r\n");
      out.write("    background: #ffffff !important;;\r\n");
      out.write("    cursor: pointer !important;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("::-webkit-scrollbar-thumb { /*滚动条里面小方块*/\r\n");
      out.write("    border-radius: 5px !important;\r\n");
      out.write("    -webkit-box-shadow: inset 0 0 5px rgba(240, 240, 240, .5) !important;;\r\n");
      out.write("    background: rgba(63, 98, 131, 0.8) !important;;\r\n");
      out.write("    cursor: pointer !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("::-webkit-scrollbar-track { \r\n");
      out.write("    -webkit-box-shadow: inset 0 0 5px rgba(240, 240, 240, .5) !important;;\r\n");
      out.write("    border-radius: 0 !important;;\r\n");
      out.write("    background: rgba(240, 240, 240, 0.5) !important;;\r\n");
      out.write("    cursor: pointer !important;\r\n");
      out.write("}\r\n");
      out.write("\t\t\r\n");
      out.write("/* \t\tbody .edit-skill-class .layui-layer-min{background:#c00; color:#fff; border: none;} */\r\n");
      out.write("\t\tbody .edit-skill-class .layui-layer-min cite{background-color:#ffffff;}\r\n");
      out.write("\t\tbody .edit-skill-class .layui-layer-btn{border-top:1px solid #E9E7E7}\r\n");
      out.write("\t\tbody .edit-skill-class .layui-layer-btn a{background:#333;}\r\n");
      out.write("\t\tbody .edit-skill-class .layui-layer-btn .layui-layer-btn1{background:#999;}\r\n");
      out.write("    </style> \r\n");
      out.write("<!-- <link rel=\"stylesheet\" type=\"text/css\" -->\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" \r\n");
      out.write("\thref=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/css/index/skill/player.css\"/>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/static/common/js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/js/layui/layui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/js/common/ajax_server.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/js/jquery.marquee.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/js/index/skill/_skill.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write("<!-- <ul class=\"layui-nav\" lay-filter=\"skill-nav\" style=\"text-align: center;\"> -->\r\n");
      out.write("<!--   <li class=\"layui-nav-item\"><a href=\"/hl_index/hl_index\">首页</a></li> -->\r\n");
      out.write("<!--   <li class=\"layui-nav-item\"> -->\r\n");
      out.write("<!--   \t<a href=\"javascript:void(0)\" class=\"skill-edit\">编辑</a> -->\r\n");
      out.write("<!--   </li> -->\r\n");
      out.write("<!-- </ul> -->\r\n");
      out.write("\t<div class=\"skill_type\" style=\"background: url('/static/common/img/44.gif') center center / cover no-repeat rgb(34, 34, 34);text-align: center;height: 500px;background-color: #606060; widows: 100%; font-size: 50px;line-height: 500px;letter-spacing: -1px;\r\n");
      out.write("    font-weight: 700;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    -webkit-animation: fade-in-down 1s;\r\n");
      out.write("    animation: fade-in-down 1s both;\r\n");
      out.write("    -webkit-animation-delay: .6s;\r\n");
      out.write("    animation-delay: .5s;\r\n");
      out.write("    text-shadow: 0 3px 6px rgba(0,0,0,.3);\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${skillType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</div>\r\n");
      out.write("\t<button class=\"menu-button-index\" id=\"index-button\"><a href=\"/hl_index/hl_index\">首页</a></button>\r\n");
      out.write("\t<button class=\"menu-button skill-edit\" id=\"open-button\">编辑文章</button>\r\n");
      out.write("\t<div class=\"box\">\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<div class=\"right-nav\" id=\"right-nav\">\r\n");
      out.write("\t\t\t\t<blockquote class=\"layui-elem-quote\">导航</blockquote>\r\n");
      out.write("\t\t\t\t<div id=\"nav\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"content\" id=\"article\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"QPlayer\">\r\n");
      out.write("<div id=\"pContent\">\r\n");
      out.write("\t<div id=\"player\">\r\n");
      out.write("\t\t<span class=\"cover\"></span>\r\n");
      out.write("\t\t<div class=\"ctrl\">\r\n");
      out.write("\t\t\t<div class=\"musicTag marquee\">\r\n");
      out.write("\t\t\t\t<strong>歌名</strong>\r\n");
      out.write("\t\t\t\t<span> - </span>\r\n");
      out.write("\t\t\t\t<span class=\"artist\">歌手</span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"progress\">\r\n");
      out.write("\t\t\t\t<div class=\"timer left\">0:00</div>\r\n");
      out.write("\t\t\t\t<div class=\"contr\">\r\n");
      out.write("\t\t\t\t\t<div class=\"rewind icon\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"playback icon\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"fastforward icon\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"right\">\r\n");
      out.write("\t\t\t\t\t<div class=\"liebiao icon\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"ssBtn\">\r\n");
      out.write("\t        <div class=\"adf\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<ol id=\"playlist\">\r\n");
      out.write("\t<div class=\"add-player\">\r\n");
      out.write("\t    <div class=\"add-player-icon\">+</div>\r\n");
      out.write("    </div>\r\n");
      out.write("</ol>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var\tplaylist = [\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/1.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t{title:\"Gravity\",artist:\"Jessica\",mp3:\"/static/common/video/2.mp3\",cover:\"http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106\",},\r\n");
      out.write("\t];\r\n");
      out.write("\t  var isRotate = true;\r\n");
      out.write("\t  var autoplay = false;\r\n");
      out.write("\t  function bgChange(){\r\n");
      out.write("\t\t\tvar lis= $('.lib');\r\n");
      out.write("\t\t\tfor(var i=0; i<lis.length; i+=2)\r\n");
      out.write("\t\t\tlis[i].style.background = 'rgba(246, 246, 246, 0.5)';\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\twindow.onload = bgChange;\r\n");
      out.write("</script>\r\n");
      out.write("\t<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/static/common/js/index/skill/player.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    var h4_length = [];\r\n");
      out.write("    window.onload = function () {\r\n");
      out.write("\r\n");
      out.write("        /* 1、创建右侧导航栏*/\r\n");
      out.write("        var html = ['<ul>'];\r\n");
      out.write("        var h2 = document.querySelectorAll('#article h2');\r\n");
      out.write("        for(var i = 0; i < h2.length; i++) {\r\n");
      out.write("            var id = 'd' + i;\r\n");
      out.write("            var el = h2[i];\r\n");
      out.write("            el.id = id;\r\n");
      out.write("            var h4_num = 0; //记录该一级菜单下的二级菜单的个数\r\n");
      out.write("            // 1.1 生成一级目录\r\n");
      out.write("            html.push('<li><a href=\"#'+ id + '\" id=\"'+ 'a' + i + i +'\">' + (i + 1) + '.' + el.innerHTML + '</a></li>');\r\n");
      out.write("            // 1.2 生成二级目录\r\n");
      out.write("            /* 生成二级目录需要从两个h2标签中找到所有的h4标签*/\r\n");
      out.write("            var parent = h2[i].parentElement;\r\n");
      out.write("            var element = h2[i];\r\n");
      out.write("\t\t\tvar count=0;\r\n");
      out.write("            while(1) {\r\n");
      out.write("                if( (element == parent.lastElementChild) || (element == h2[i+1])) {\r\n");
      out.write("\t\t\t\t\tif(count!=0 &&count!=1){\r\n");
      out.write("\t\t\t\t\t\thtml.push(\"</ul>\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("                    break; //搜索结束\r\n");
      out.write("                }\r\n");
      out.write("                element = element.nextElementSibling;\r\n");
      out.write("                if(element.tagName.toLowerCase() == 'h4') {\r\n");
      out.write("\t\t\t\t\tcount++;\r\n");
      out.write("\t\t\t\t\tif(count==1){\r\n");
      out.write("\t\t\t\t\t\thtml.push('<ul class=\"two-ul\">');\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("                    element.id = 'd' + i + h4_num;\r\n");
      out.write("                    html.push('<li  class=\"two-li\"><a href=\"#' + element.id + '\" id=\"a' + i + '' + i + ''+ h4_num + '' + h4_num + '\" class=\"level2_a\">' + (i+1) + '.' + (h4_num+1)+ ' '+element.innerText + '</a></li>');\r\n");
      out.write("                    h4_num = h4_num + 1;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            h4_length.push(h4_num);\r\n");
      out.write("        }\r\n");
      out.write("        html.push('</ul>');\r\n");
      out.write("        var nav = document.getElementById('nav');\r\n");
      out.write("        nav.innerHTML = html.join('\\n');\r\n");
      out.write("\r\n");
      out.write("        /* 2、点击时激活右侧导航*/\r\n");
      out.write("        $('#nav a').click(function(e){\r\n");
      out.write("            setTimeout(function(){\r\n");
      out.write("                $('#nav a').removeClass(\"c\");\r\n");
      out.write("\t\t\t\t//$(\"#nav ul.a\").addClass(\"two-ul\");\r\n");
      out.write("\t\t\t\t/* for(var i=0;i<_ul_a.length;i++){\r\n");
      out.write("\t\t\t\t\t_ul_a[i].setAttribute(\"class\",\"two-ul\");\r\n");
      out.write("\t\t\t\t} */\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("                if( e.target.getAttribute(\"class\") == null) {\r\n");
      out.write("                    e.target.setAttribute(\"class\", \"c\");\r\n");
      out.write("                 } else {\r\n");
      out.write("                   e.target.setAttribute(\"class\", e.target.getAttribute(\"class\")+ ' '+\"c\");\r\n");
      out.write("                }\r\n");
      out.write("\t\t\t\tvar is_ul=e.target.parentElement.nextElementSibling;\r\n");
      out.write("\t\t\t\tif(is_ul!=undefined &&is_ul.getAttribute('class')=='two-ul'){\r\n");
      out.write("\t\t\t\t\tis_ul.setAttribute(\"class\",\"a\");\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("            },0);\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    /* 3、滚动时激活右侧导航 */\r\n");
      out.write("    $(function(){\r\n");
      out.write("        $(window).scroll(function(){\r\n");
      out.write("            var wst = $(window).scrollTop(); //滚动条距离顶部距离页面顶端的值\r\n");
      out.write("            var h2 = document.querySelectorAll('#article h2');\r\n");
      out.write("            for(var i=0; i<h2.length; i++){\r\n");
      out.write("\t\t\t\r\n");
      out.write("                if($(\"#d\"+i).offset().top <= wst){\r\n");
      out.write("                    $('#nav a').removeClass(\"c\");\r\n");
      out.write("                    if( !$('#a'+i+i).hasClass(\"c\")) {\r\n");
      out.write("                        $('#a'+i+i).addClass(\"c\");\r\n");
      out.write("\t\t\t\t\t\t var is_ul=$('#a'+i+i).parent().next();\r\n");
      out.write("\t\t\t\t\t\t if(is_ul.hasClass('two-ul')){\r\n");
      out.write("\t\t\t\t\t\t\t is_ul.removeClass(\"two-ul\");\r\n");
      out.write("\t\t\t\t\t\t }\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                for(var j = 0; j < h4_length[i]; j++){\r\n");
      out.write("                    if($(\"#d\"+i+j).offset().top <= wst){\r\n");
      out.write("                        $('#nav a').removeClass(\"c\");\r\n");
      out.write("                        $('#a'+i+i+j+j).addClass(\"c\");\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("    });\r\n");
      out.write(" window.οnlοad=\r\n");
      out.write("\t$(function(){\r\n");
      out.write("\t\tvar oDiv = document.getElementById(\"nav\"),\r\n");
      out.write("\t\t    H = 0,\r\n");
      out.write("\t\t    Y = oDiv        \r\n");
      out.write("\t\twhile (Y) {\r\n");
      out.write("\t\t    H += Y.offsetTop; \r\n");
      out.write("\t\t    Y = Y.offsetParent;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t window.onscroll = function()\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t    var s = document.body.scrollTop || document.documentElement.scrollTop\r\n");
      out.write("\t\t    if(s>H) {\r\n");
      out.write("\t\t        document.getElementsByClassName(\"right-nav\")[0].style = \"    position: fixed;top: 0;z-index: 666;\"\r\n");
      out.write("\t\t        $(\"#open-button\").css('border','1px solid rgb(0, 150, 136)');\r\n");
      out.write("\t\t        $(\"#open-button\").css('color','#009688');\r\n");
      out.write("\t\t\t        $(\"#open-button\").css('left','10px');\r\n");
      out.write("\t\t    } else {\r\n");
      out.write("\t\t         document.getElementsByClassName(\"right-nav\")[0].style = \"\"\r\n");
      out.write("\t\t        \t $(\"#open-button\").css('border','1px solid rgba(255,255,255,.6)');\r\n");
      out.write("\t\t\t        $(\"#open-button\").css('color','#fff');\r\n");
      out.write("\t\t\t        $(\"#open-button\").css('left','150px');\r\n");
      out.write("\t\t    }\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\t\r\n");
      out.write("\t})\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
