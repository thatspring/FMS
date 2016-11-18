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
	<style>
		.login input{
    		height: 30px;/*登录和注册按钮的高度*/
    		color:  white;/*登录和注册按钮字体颜色为白色*/
    		font-size: 18px;/*登录和注册按钮的字体大小*/
   			border: 0px;/*无边框*/
    		padding: 0px;/*无内边距*/
    		cursor: pointer;/*登录和注册按钮的选择时为手形状*/
		}
	</style>
  </head>
  
  <body>
  	<div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1">
		<img src="source/image/welcome_bg.jpg" height="100%" width="100%"/>
	</div>
	<div id="title" style="position:absolute;left:350;top:10">
		<img src="source/image/welcome_title.png"/>
	</div>
	<div id="login" style="position:absolute;left:780;top:300">
		<input type="button" id="Button" value="begin"
			onclick="location.href='login.jsp'"> 
	</div>
    
  </body>
</html>
