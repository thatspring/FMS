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
    
    <title>My JSP 'listaccount.jsp' starting page</title>
    
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
   <table>
    <tr>
     <th>项目</th><th>金额</th><th>类型</th><th>日期</th><th>操作</th>
    </tr>
    <s:iterator id="i" value="alist">
    <tr>
     <td><s:property value="#i.accountProject"/></td>
     <td>￥<s:property value="#i.accountMoney"/></td>
     <td><s:property value="#i.accountType"/></td>
     <td><s:property value="#i.accountDate"/></td>
     <td><a href="accountDelete.action?accountId=<s:property value="#i.accountId"/>
     &userId=<s:property value="ruser.userId"/>">删除</a></td>
    </tr>
    </s:iterator>
   </table>
   <h3>总计： ￥<s:property value="CMoney"></s:property></h3>
   <a href="userAccount.action?userId=<s:property value="ruser.userId"/>">返回</a><br>
  </body>
</html>
