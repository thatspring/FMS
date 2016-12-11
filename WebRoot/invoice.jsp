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
    
    <title>My JSP 'invoice.jsp' starting page</title>
    
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
    <form action="invoiceQueryByDate">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <span>请输入日期用于查询你当日的发票</span><br>
    <input type="date" name="invoice.invoiceDate"/>
    <input type="submit" value="查询">
    </form>
 
    <form action="invoiceJmpI">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增发票">
    </form>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
