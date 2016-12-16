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
    
    <title>My JSP 'invoiceprint.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="Javascript">
function preview()
{
    bdhtml=window.document.body.innerHTML;
    sprnstr="<!--startprint-->";
    eprnstr="<!--endprint-->";
    prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
    prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
    window.document.body.innerHTML=prnhtml;
    window.print();
}
</script>
<style> 
@media Print { .Noprn { DISPLAY: none }}
</style>
<link type="text/css" rel="stylesheet" href="header.css"/> 
<link type="text/css" rel="stylesheet" href="invoicecss.css"/>
<style>
table{
	border-top:1px solid #FF0000;
	border-left:1px solid #FF0000;
	border-right:none;
 	border-bottom:none;
}
table td{
	border-top:nooe;
 	border-left:none;
 	border-right:1px solid #FF0000;
 	border-bottom:1px solid #FF0000;
}
</style>

  </head>
  
  <body>
  <!--startprint-->
  <div class="invoiceprint">
  	<h1 style="margin-left:9.7cm">发票</h1>
   	<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;'>
    <tr>
     <td width="200px" colspan="4" height="30px">发票代码No：
      <s:property value="invoice.invoiceNumber"/>
     </td>
     <td width="200px" colspan="4" height="30px">开票日期：
       <s:property value="invoice.invoiceDate"/>
     </td>
    </tr>
    <tr>
     <td width="200px" colspan="8" height="30px">发票号码No：
      <s:property value="invoice.invoiceId"/>
     </td>
    </tr>
    <tr>
     <td width="200px" colspan="2" height="60px" style="text-align:center">付款方：</td>
     <td width="200px" colspan="6" height="60px">
       <s:property value="invoice.invoicePayer"/>
     </td>
    </tr>
    <tr>
     <td width="200px" colspan="2" height="30px" style="text-align:center">发票项目类型</td>
     <td width="200px" colspan="2" height="30px" style="text-align:center">单价</td>
     <td width="200px" colspan="2" height="30px" style="text-align:center">数量</td>
     <td width="200px" colspan="2" height="30px" style="text-align:center">金额</td>
    </tr>
    <tr>
     <td width="200px" colspan="2" height="135px" align="middle">
       <s:property value="invoice.invoiceProject"/>
     </td>
     	<td width="200px" colspan="2" height="135px"></td>
     	<td width="200px" colspan="2" height="135px"></td>
     	<td width="200px" colspan="2" height="135px" align="middle">
     	  <s:property value="invoice.invoiceMoney"/>
     	</td>
       </tr>
       <tr>
     	<td width="200px" colspan="8" height="30px">总计：
     	  <s:property value="invoice.invoiceCmoney"/>
     	</td>
    	</tr>
    	<tr>
     	  <td width="200px" colspan="2" height="60px" style="text-align:center">收款方：</td>
     	  <td width="200px" colspan="2" height="60px">
     		<s:property value="invoice.invoicePayee"/>
     	  </td>
     	  <td width="200px" height="60px" colspan="2" style="text-align:center">备注：</td>
     	  <td width="200px" colspan="2" height="60px">
     	    <s:property value="invoice.invoiceRemarks"/>
     	  </td>
    	 </tr>
    	 <tr>
     	   <td width="200px" height="30px" colspan="2" style="text-align:center">审核人：</td>
     	   <td width="200px" colspan="2" height="30px">
     	     <s:property value="invoice.invoiceUnumber"/>
     	   </td>
     	   <td width="200px" height="30px" colspan="2" style="text-align:center">类型：</td>
     	   <td width="200px" colspan="3" height="30px" style="width:200px;height:30px">
     	     <s:property value="invoice.invoiceType"/>
     	   </td>
    	 </tr>
   	   </table>
   	  </div>
   	<!--endprint-->
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <a href="invoiceQueryByDate.action?invoice.invoiceDate=<s:property value="invoice.invoiceDate"/>
    &userId=<s:property value="ruser.userId"/>"><input class="Noprn" type="button" value="返回" id="ip"></a>
    <input class="Noprn" type="button" onclick="window.print()" value="打印" id="ip">
</html>
