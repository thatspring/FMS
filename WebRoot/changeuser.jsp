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
    
    <!--<title>My JSP 'change.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	-->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <s:if test="%{ruser.userNumber==null}">
    <title>My JSP 'change.jsp' starting page</title>
    <body>
     <h2>更改密码</h2>
     <form action="userChangeP">
     <s:hidden name="ruser.userId" value="%{ruser.userId}"/></span>
     <span>密码：<s:textfield name="ruser.userPass" value="%{ruser.userPass}"/></span><br>
     <s:submit value="修改"/>
     </form>
     <a href="userPlay.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </body>
  </s:if>
  <s:else>
    <title>My JSP 'change.jsp' starting page</title>
    <body>
     <h2>更改信息</h2>
     <form action="userChangeI">
     <s:hidden name="ruser.userId" value="%{ruser.userId}"/></span>
     <span>用户代码：<s:property value="%{ruser.userNumber}"/></span><br>
     <span>用户真实姓名：<s:textfield name="ruser.userTruename" value="%{ruser.userTruename}"/></span><br>
     <span>用户所在部门：<s:textfield name="ruser.userDepartment" value="%{ruser.userDepartment}"/></span><br>
     <span>用户现任职务：<s:textfield name="ruser.userPost" value="%{ruser.userPost}"/></span><br>
     <span>用户办公电话：<s:textfield name="ruser.userPhone" value="%{ruser.userPhone}"/></span><br>
     <span>用户手机号码：<s:textfield name="ruser.userIphone" value="%{ruser.userIphone}"/></span><br>
     <span>用户电子邮件：<s:textfield name="ruser.userEmail" value="%{ruser.userEmail}"/></span><br>
     <s:submit value="修改"/>
     </form>
     <a href="userPlay.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </body>
  </s:else>
  </head>
</html>
