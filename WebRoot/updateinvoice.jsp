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
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	<link type="text/css" rel="stylesheet" href="invoicecss.css"/>
	<style type="text/css">
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
    <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
  	</div>
  	<div class="topbar">
  		<div class="title">
  	  		<img alt="" src="source/image/homepage_title.png">
  	  	</div>
      	<div class="topbody">
      		<div class="info">
      			你好！
      			<s:property value="ruser.userName"/>
      			<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      			<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		</div>
      	</div>
  	</div>
  	<div class="panel">
  		<div class="head">
    		<form action="invoiceQueryByDate">
    			<s:hidden name="userId" value="%{ruser.userId}"/>
    			<span>请输入日期用于查询你当日的发票</span><br>
    			<input type="date" name="invoice.invoiceDate" class="date"/>
    			<input type="submit" value="查询" class="button">
    		</form>
 
    		<form action="invoiceJmpI">
    			<s:hidden name="userId" value="%{ruser.userId}"/>
    			<input type="submit" value="新增发票" class="button">
    		</form>
    	</div>
    	<div class="invoice_panel">
    		<form action="invoiceUpdate">
    			<div class="invoice">
   					<s:hidden name="userId" value="%{ruser.userId}"/></span>
   					<s:hidden name="invoice.invoiceId" value="%{invoice.invoiceId}"/></span>
   					<h1>发票</h1>
   					<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;'>
    					<tr>
     						<td width="200px" colspan="4" height="30px">发票代码No：
     							<input type="text" name="invoice.invoiceNumber" value="<s:property value='%{invoice.invoiceNumber}'/>" style="width:295px;height:30px">
     						</td>
     						<td width="200px" colspan="4" height="30px">开票日期：
     							<input type="Date" name="invoice.invoiceDate" value="<s:property value='%{invoice.invoiceDate}'/>">
     						</td>
    					</tr>
    					<tr>
    						<td width="200px" colspan="8" height="30px">发票号码No：</td>
    					</tr>
    					<tr>
     						<td width="200px" colspan="2" height="60px" style="text-align:center">付款方：</td>
     						<td width="200px" colspan="6" height="60px">
     							<input type="text" name="invoice.invoicePayer" value="<s:property value='%{invoice.invoicePayer}'/>" style="width:602px;height:60px">
     						</td>
    					</tr>
    					<tr>
     						<td width="200px" colspan="2" height="30px" style="text-align:center">发票项目类型</td>
     						<td width="200px" colspan="2" height="30px" style="text-align:center">单价</td>
     						<td width="200px" colspan="2" height="30px" style="text-align:center">数量</td>
     						<td width="200px" colspan="2" height="30px" style="text-align:center">金额</td>
    					</tr>
    					<tr>
     						<td width="200px" colspan="2" height="135px">
     							<input type="text" name="invoice.invoiceProject" value="<s:property value='%{invoice.invoiceProject}'/>" style="width:200px;height:135px">
     						</td>
     						<td width="200px" colspan="2" height="135px"></td>
     						<td width="200px" colspan="2" height="135px"></td>
     						<td width="200px" colspan="2" height="135px">
     							<input type="text" name="invoice.invoiceMoney" value="<s:property value='%{invoice.invoiceMoney}'/>" style="width:200px;height:135px">
     						</td>
    					</tr>
    					<tr>
     						<td width="200px" colspan="8" height="30px">总计：
     							<input type="text" name="invoice.invoiceCmoney" value="<s:property value='%{invoice.invoiceCmoney}'/>" style="width:750px;height:30px">
     						</td>
    					</tr>
    					<tr>
     						<td width="200px" colspan="2" height="60px" style="text-align:center">收款方：</td>
     						<td width="200px" colspan="2" height="60px">
     							<input type="text" name="invoice.invoicePayee" value="<s:property value='%{invoice.invoicePayee}'/>" style="width:200px;height:60px">
     						</td>
     						<td width="200px" height="60px" colspan="2" style="text-align:center">备注：</td>
     						<td width="200px" colspan="2" height="60px">
     							<input type="text" name="invoice.invoiceRemarks" value="<s:property value='%{invoice.invoiceRemarks}'/>" style="width:200px;height:60px"/>
     						</td>
    					</tr>
    					<tr>
     						<td width="200px" height="30px" colspan="2"style="text-align:center">审核人：</td>
     						<td width="200px" colspan="2" height="30px">
     							<input type="text" name="invoice.invoiceUnumber"  value="<s:property value='%{invoice.invoiceUnumber}'/>" style="width:200px;height:30px"/>
     						</td>
     						<td width="200px" height="30px" colspan="2" style="text-align:center">类型：</td>
     						<td width="200px" colspan="3" height="30px" style="width:200px;height:30px">
     							<input type="text" name="invoice.invoiceType" value="<s:property value='%{invoice.invoiceType}'/>"/>
     						</td>
    					</tr>
   					</table>
   				</div>
   				<input type="submit" value="提交">
   			</form>
    	</div>
    </div>
  </body>
</html>
