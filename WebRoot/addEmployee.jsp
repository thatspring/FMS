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
    
    <title>My JSP 'addaccount.jsp' starting page</title>
    
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
   <h3>你好！<s:property value="ruser.userName"/></h3>
   <form action="accountAdd">
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <tr>
     <th>员工ID</th><th>姓名</th><th>工作天数</th><th>请假天数</th><th>领取审核</th><th>时间</th>
    </tr>
    <tr>
     <td><input type="text" name=""/></td>
     <td>￥<input type="text" name="account.accountMoney"/></td>
     <td><input type="text" name="account.accountType"/></td>
     <td><input type="date" name="account.accountDate"/></td>
     
     
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
