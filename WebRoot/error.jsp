<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.error{
			width:100%;
			height:100%;
			text-align:center;
		}
		.error .img{
			display:block;
			margin-left:auto;
			margin-right:auto;
			width:25%;
			margin-top:300px;
		}
		.img img{
			display:block;
		}
		input{
			display:block;
			width:150px;
			height:45px;
			font-size:20px;
			border:1px solid #ffffff;
			background-color:#0099FF;
			border-radius:2px;
			cursor: pointer;
			color:#FFFF00;
			margin-left:auto;
			margin-right:auto;
			margin-top:50px;
		}
		input:hover{
			color:#0033FF;
			background-color:#ffffff;
			border:1px solid #0033FF;
		}
	</style>
  </head>
  
  <body bgcolor="#33CCFF">
  <!--
  	 <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
  	 </div>
  -->
     <div class="error">
     	<div class="img">
     		<img src="source/image/error.png"/>
     		<img src="source/image/error1.png"/>
     	</div>
     	<input type="button" id="Button" value="返回主界面"
			onclick="location.href='index.jsp'">
     </div>
  </body>
</html>
