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
    
    <title>My JSP 'updateinvoice.jsp' starting page</title>
    
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
   <form action="invoiceUpdate">
   <div><img src="picture/invoice.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <s:hidden name="invoice.invoiceId" value="%{invoice.invoiceId}"/></span>
   <table>
    <tr>
     <td>发票代码No：</td>
     <td><s:textfield name="invoice.invoiceNumber" value="%{invoice.invoiceNumber}"/></td>
    </tr>
    <tr>
     <td>开票日期：</td>
     <td><s:textfield name="invoice.invoiceDate" value="%{invoice.invoiceDate}"/></td>
    </tr>
    <tr>
     <td>付款方：</td>
     <td><s:textfield name="invoice.invoicePayer" value="%{invoice.invoicePayer}"/></td>
    </tr>
    <tr>
     <td>项目类型：</td>
     <td><s:textfield name="invoice.invoiceProject" value="%{invoice.invoiceProject}"/></td>
    </tr
    <tr>
     <td>金额：</td>
     <td><s:textfield name="invoice.invoiceMoney" value="%{invoice.invoiceMoney}"/></td>
    </tr>
    <tr>
     <td>总计：</td>
     <td><s:textfield name="invoice.invoiceCmoney" value="%{invoice.invoiceCmoney}"/></td>
    </tr>
    <tr>
     <td>收款方：</td>
     <td><s:textfield name="invoice.invoicePayee" value="%{invoice.invoicePayee}"/></td>
    </tr>
    <tr>
     <td>备注：</td>
     <td><s:textfield name="invoice.invoiceRemarks" value="%{invoice.invoiceRemarks}"/></td>
    </tr
    <tr>
     <td>审核人：</td>
     <td><s:textfield name="invoice.invoiceUnumber" value="%{invoice.invoiceUnumber}"/></td>
    </tr>
    <tr>
     <td>类型：</td>
     <td><s:textfield name="invoice.invoiceType" value="%{invoice.invoiceType}"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
