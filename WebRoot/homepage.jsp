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
    
    <title>My JSP 'homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		*{
			margin: 0px;
    		padding:0px;
		}
		
		.topbar{
    		width:100%;
    		background-color: #191970;
    		display: inline-block;
		}
		.topbar .title{
			float:left;
		}
		.topbar .topbody{
			float:right;
    		width:50%;
    		margin: 0 auto;
		}
		.topbar .topbody .info{
			float:right;
			color:#FFF;
		}
		.topbar .topbody .info a{
			color:	#FFFFF0;
		}
	</style>

  </head>
  
  <body style="background-color:#F5F5F5">
  <div class="topbar">
  	  <div class="title">
  	  	<img alt="" src="source/image/homepage_title.png">
  	  </div>
      <div class="topbody">
      	<h3 class="info">
      		你好！
      		<s:property value="ruser.userName"/>
      		<a href="login.jsp">[退出登录]</a>
      	</h3>
      </div>
  </div>
    <a href="userPlay.action?userId=<s:property value="ruser.userId"/>">查看个人信息</a><br>
    <a href="userAccount.action?userId=<s:property value="ruser.userId"/>"">记账功能</a><br>
    <a href="">流水功能</a><br>
    <a href="">发票编辑</a><br>
    <a href="">报表编辑</a><br>
    <a href="">税率计算</a><br>
    <a href="userSalary.action?userId=<s:property value="ruser.userId"/>"">工资发放</a><br>
  </body>
</html>
