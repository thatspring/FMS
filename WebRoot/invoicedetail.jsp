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
    
    <title>My JSP 'invoicedetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <h3>你好！<s:property value="ruser.userName"/></h3>
   <div><img src="picture/invoice.png" alt=""></div>
   <table>
    <tr>
     <td>发票代码No：</td>
     <td><s:property value="invoice.invoiceNumber"/></td>
    </tr>
    <tr>
     <td>发票号码No：</td>
     <td><s:property value="invoice.invoiceId"/></td>
    </tr>
    <tr>
     <td>开票日期：</td>
     <td><s:property value="invoice.invoiceDate"/></td>
    </tr>
    <tr>
     <td>付款方：</td>
     <td><s:property value="invoice.invoicePayer"/></td>
    </tr>
    <tr>
     <td>项目类型：</td>
     <td><s:property value="invoice.invoiceProject"/></td>
    </tr>
    <tr>
     <td>金额：</td>
     <td><s:property value="invoice.invoiceMoney"/></td>
    </tr>
    <tr>
     <td>总计：</td>
     <td><s:property value="invoice.invoiceCmoney"/></td>
    </tr>
    <tr>
     <td>收款方：</td>
     <td><s:property value="invoice.invoicePayee"/></td>
    </tr>
    <tr>
     <td>备注：</td>
     <td><s:property value="invoice.invoiceRemarks"/></td>
    </tr>
    <tr>
     <td>审核人：</td>
     <td><s:property value="invoice.invoiceUnumber"/></td>
    </tr>
    <tr>
     <td>类型：</td>
     <td><s:property value="invoice.invoiceType"/></td>
    </tr>
   </table>
   <a href="invoiceQueryByDate.action?invoice.invoiceDate=<s:property value="invoice.invoiceDate"/>
   &userId=<s:property value="ruser.userId"/>">返回</a><br>
  <body>
    
  </body>
</html>
