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
    <title>My JSP 'addinvoice.jsp' starting page</title>
    </head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


  <body>
   <h3>你好！<s:property value="ruser.userName"/></h3>
   <form action="invoiceAdd">
   <div><img src="picture/invoice.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <tr>
     <td>发票代码No：</td>
     <td><input type="text" name="invoice.invoiceNumber"/></td>
    </tr>
    <tr>
     <td>开票日期：</td>
     <td><input type="Date" name="invoice.invoiceDate"/></td>
    </tr>
    <tr>
     <td>付款方：</td>
     <td><input type="text" name="invoice.invoicePayer"/></td>
    </tr>
    <tr>
     <td>项目类型：</td>
     <td><input type="text" name="invoice.invoiceProject"/></td>
    </tr>
    <tr>
     <td>金额：</td>
     <td><input type="text" name="invoice.invoiceMoney"/></td>
    </tr>
    <tr>
     <td>总计：</td>
     <td><input type="text" name="invoice.invoiceCmoney"/></td>
    </tr>
    <tr>
     <td>收款方：</td>
     <td><input type="text" name="invoice.invoicePayee"/></td>
    </tr>
    <tr>
     <td>备注：</td>
     <td><input type="text" name="invoice.invoiceRemarks"/></td>
    </tr>
    <tr>
     <td>审核人：</td>
     <td><input type="text" name="invoice.invoiceUnumber"/></td>
    </tr>
    <tr>
     <td>类型：</td>
     <td><input type="text" name="invoice.invoiceType"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
