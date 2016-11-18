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
    
    <title>My JSP 'addaccount.jsp' starting page</title>
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

  </head>
  
  <body>
   <h3>你好！<s:property value="ruser.userName"/></h3>
   <form action="accountAdd">
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <tr>
     <th>项目</th><th>金额</th><th>类型</th><th>日期</th>
    </tr>
    <tr>
     <td><input type="text" name="account.accountProject"/></td>
     <td>￥<input type="text" name="account.accountMoney"/></td>
     <td><input type="text" name="account.accountType"/></td>
     <td><input type="date" name="account.accountDate"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
