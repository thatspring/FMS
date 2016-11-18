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
		#login input{
			border-radius: 5px;
			display: block;
    		height: 60px;
    		color:  white;
    		font-size: 35px;
   			border: 0px;/*无边框*/
    		padding: 0px;/*无内边距*/
    		cursor: pointer;
    		background-color: #3399CC;/*按钮的背景颜色*/
    		width: 260px;/*按钮的宽度*/
    		margin: 0px auto;
    		margin-top: 13%;
		}
		#login input:hover {
   			background-color: white;/*按钮选中后背景颜色为白色*/
    		color:  #3399CC;/*按钮选中后字体颜色为褐色*/
    		border: 1px solid #3399CC;/*按钮选中后边框颜色为褐色*/
		}
		#title img{
			display: block;
			margin:0px auto;
			margin-top: 3%;
		}
	</style>
  </head>
  
  <body>
  	<div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1">
		<img src="source/image/welcome_bg.jpg" height="100%" width="100%"/>
	</div>
	<div id="title">
		<img src="source/image/welcome_title.png"/>
	</div>
	<div id="login">
		<input type="button" id="Button" value="进入系统"
			onclick="location.href='login.jsp'"> 
	</div>
    
  </body>
</html>
