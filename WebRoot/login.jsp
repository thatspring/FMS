<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
     <h2>登陆</h2><br/>
     <form action="userLogin">
     <span>用户名：</span><span><input type="text" name="user.userName"/></span><br/>
     <span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><span></span><input type="password" name="user.userPass" style="width: 156px; "><br/>
     <input type="submit" value="登陆">
     </form>
     <a href="register.jsp">注册</a>         
     <a href="index.jsp">返回</a>
  </body>
</html>
