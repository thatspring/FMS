<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    <!--  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	-->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	
	<style>
		#info_panel{
			width:95%;
			margin:0px auto;
			background-color:white;
			height:93%;
		}
		#info_panel #choice_card{ 
			width:20%; 
			float:left;
			height:100%;
			background-color:#E6E6FA;
		}
    	#info_panel #choice_card li{
    		padding:5px; 
    		background-color:white; 
    		cursor:pointer;
    		border:1px solid #E6E6FA;
    	}
    	#info_panel #choice_card li:hover{
    		background:#E6E6FA;
    		border:1px solid #FFFFFF;
    	}
    	#info_panel #right_panel{
    		width:80%; 
			float:right;
			height:100%;
			background-color:white;
    	}
	</style>
  </head>
  
  <body>
  <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
  </div>
  <!-- 导航栏 -->
  <div class="topbar">
  	  <div class="title">
  	  	<img alt="" src="source/image/homepage_title.png">
  	  </div>
      <div class="topbody">
      	<div class="info">
      		<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      	</div>
      </div>
  </div>
  <div id="info_panel">
  	<nav class="menu" data-pjax >
  		<a href="userPlay.action?userId=<s:property value="ruser.userId"/>">个人信息</a>
  		<a href="userEditI.action?userId=<s:property value="ruser.userId"/>">修改信息</a>
  		<a href="userEditP.action?userId=<s:property value="ruser.userId"/>">修改密码</a>
  	</nav>
	<h3>个人详细信息</h3><br>
    <span>用户代码：</span><s:property value="ruser.userNumber"/><br>
    <span>用户真实姓名：</span><s:property value="ruser.userTruename"/><br>
    <span>用户所在部门：</span><s:property value="ruser.userDepartment"/><br>
    <span>用户现任职务：</span><s:property value="ruser.userPost"/><br>
    <span>用户办公电话：</span><s:property value="ruser.userPhone"/><br>
    <span>用户手机号码：</span><s:property value="ruser.userIphone"/><br>
    <span>用户电子邮箱：</span><s:property value="ruser.userEmail"/><br>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </div>
  
    
  </body>
</html>