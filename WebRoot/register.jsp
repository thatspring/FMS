<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
     <h2>注册</h2><br/>
     <form action="userRegister">
     <span>用户代码：</span><span><input type="text" name="user.userNumber"/></span><br/>
     <span>用户真实姓名：</span><span><input type="text" name="user.userTruename"/></span><br/>
     <span>用户所在部门：</span><span><input type="text" name="user.userDepartment"/></span><br/>
     <span>用户现任职务：</span><span><input type="text" name="user.userPost"/></span><br/>
     <span>用户办公电话：</span><span><input type="text" name="user.userPhone"/></span><br/>
     <span>用户手机号码：</span><span><input type="text" name="user.userIphone"/></span><br/>
     <span>用户电子邮箱：</span><span><input type="text" name="user.userEmail"/></span><br/>
     <span>用户名：</span><span><input type="text" name="user.userName"/></span><br/>
     <span>密码：</span><span><input type="text" name="user.userPass"/></span><br/>
     <input type="submit" value="注册">
     </form>
     <a href=login.jsp>返回</a>
  </body>
</html>
