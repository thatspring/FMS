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
    
    <title>My JSP 'listinvoice.jsp' starting page</title>
    
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
     <th>发票号码</th><th>日期</th><th>审核人</th><th>操作</th>
    </tr>
    <s:iterator id="i" value="ilist">
    <tr>
     <td><a href="invoiceDetail.action?invoiceId=<s:property value="#i.invoiceId"/>
     &userId=<s:property value="ruser.userId"/>">
     <s:property value="#i.invoiceId"/></a></td>
     <td><s:property value="#i.invoiceDate"/></td>
     <td><a href="invoiceUdetail.action?invoiceId=<s:property value="#i.invoiceId"/>
     &userId=<s:property value="ruser.userId"/>">
     <s:property value="#i.invoiceUnumber"/></a></td>
     <td><a href="invoiceUpJAi.action?invoiceId=<s:property value="#i.invoiceId"/>
     &userId=<s:property value="ruser.userId"/>">编辑</a>
         <a href="invoiceDelete.action?invoiceId=<s:property value="#i.invoiceId"/>
     &userId=<s:property value="ruser.userId"/>">删除</a></td>
    </tr>
    </s:iterator>
   </table>
   <a href="userInvoice.action?userId=<s:property value="ruser.userId"/>">返回</a><br>
  </body>
</html>
