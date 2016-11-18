<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>财务管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1">
		<img src="source/image/welcome_bg.jpg" height="100%" width="100%"/>
	</div>
	<div id="title" style="position:absolute;left:300;top:10">
		<img src="source/image/welcome_title.png"/></div>
    <a href="login.jsp">登陆</a>
  </body>
</html>
