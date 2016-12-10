<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	
	<style type="text/css">
		
		.function {
			margin:0px auto;
			margin-top:10%;
			text-align:center;
		}
		.function input{
    		height: 200px;
    		color:  	#00008B;
    		font-size: 35px;
   			border: 0px;/*无边框*/
    		padding: 0px;/*无内边距*/
    		cursor: pointer;
    		background-color:	#F0FFFF;/*按钮的背景颜色*/
    		width: 15%;/*按钮的宽度*/
    		margin: 0px auto;
    		margin-top: 3%;
    		opacity:0.8;
		}
		.function input:hover{
			border:2px solid #00008B;
		}
	</style>

  </head>
  
  <body>
  <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
  </div>
  <div class="topbar">
  	  <div class="title">
  	  	<img alt="" src="source/image/homepage_title.png">
  	  </div>
      <div class="topbody">
      	<div class="info">
      		你好！
      		<s:property value="ruser.userName"/>
      		<a href="userPlay.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[个人中心]</a>
      		<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      	</div>
      </div>
  </div>
  <div class="function">
  	<input type="button" id="Button" value="记账功能" 
  		onclick="location.href='userAccount.action?userId=<s:property value="ruser.userId"/>'"> 
  	<input type="button" id="Button" value="流水功能" 
  		onclick="location.href='userJson.action?userId=<s:property value="ruser.userId"/>'"> 
  	<input type="button" id="Button" value="发票编辑" 
  		onclick="location.href='userInvoice.action?userId=<s:property value="ruser.userId"/>'"> 
  	<input type="button" id="Button" value="报表编辑" 
  		onclick="location.href='userFstatements.action?userId=<s:property value="ruser.userId"/>'"> 
  	<input type="button" id="Button" value="税率计算" 
  		onclick="location.href='userTax.action?userId=<s:property value="ruser.userId"/>'">
  	<input type="button" id="Button" value="工资发放" 
  		onclick="location.href='userSalary.action?userId=<s:property value="ruser.userId"/>'">
  </div>
  </body>
</html>
