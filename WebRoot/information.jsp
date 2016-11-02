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
    
    <title>My JSP 'information.jsp' starting page</title>
    
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
    <h3>个人详细信息</h3><br>
    <span>用户代码：</span><s:property value="ruser.userNumber"/><br>
    <span>用户真实姓名：</span><s:property value="ruser.userTruename"/><br>
    <span>用户所在部门：</span><s:property value="ruser.userDepartment"/><br>
    <span>用户现任职务：</span><s:property value="ruser.userPost"/><br>
    <span>用户办公电话：</span><s:property value="ruser.userPhone"/><br>
    <span>用户手机号码：</span><s:property value="ruser.userIphone"/><br>
    <span>用户电子邮箱：</span><s:property value="ruser.userEmail"/><br>
    <a href="userEditI.action?userId=<s:property value="ruser.userId"/>">修改信息</a>
    <a href="userEditP.action?userId=<s:property value="ruser.userId"/>">修改密码</a><br>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
