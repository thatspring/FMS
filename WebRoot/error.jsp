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
			width:26%;
			height:20%;
			padding-top:5%;
			text-align:center;
		}
		input{
			width:50px;
			height:30px;
			border:1px solid #000000;
			backgorund-color:#ffffff;
			
		}
	</style>
  </head>
  
  <body>
  	 <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/error.jpg" height="100%" width="100%"/>
  	 </div>
     <div class="error">
     	<input type="button" id="Button" value="返回"
			onclick="location.href='index.jsp'">
     </div>
  </body>
</html>
