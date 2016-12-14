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
<link type="text/css" rel="stylesheet" href="table_tabs.css"/>
<style>
td input{
	border:0px;
	height:48px;
	font-size:15px;
	paddind-left:2px;
}
</style>

  </head>
  
  <body>
  <!--startprint-->
 <div class="table_panel">
   							<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s0">
   								<tr>
   									<td width="450px" colspan="2">现金流量表</td>
   								</tr>
    							<tr>
     								<td width="450px">报表编制日期：
     									<s:property value="cstatement.CstatementMonth"></s:property>
     								</td>
     								<td>金额单位：￥</td>
    							</tr>
    							<tr>
    								<td width="450px">项目</td>
    								<td width="450px">金额</td>
    							</tr>
    							<tr>
    								<td width="450px" colspan="2">经营活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><s:property value="cstatement.Cbin"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><s:property value="cstatement.Cbout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"><s:property value="cstatement.Cbinout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px" colspan="2">投资活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><s:property value="cstatement.Ciin"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><s:property value="cstatement.Ciout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"><s:property value="cstatement.Ciinout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px" colspan="2">筹集活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><s:property value="cstatement.Crin"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><s:property value="cstatement.Crout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"><s:property value="cstatement.Crinout"></s:property></td>
    							</tr>
    							<tr>
     								<td width="450px">编制人:</td>
     								<td>
     									<s:property value="cstatement.CstatementUnumber"></s:property></a>
     								</td>
    							</tr>
   							</table>
  <!--endprint-->
   <s:hidden name="userId" value="%{ruser.userId}"/>
   <a href="statementQueryc.action?fsdate=<s:property value="cstatement.CstatementMonth"/>
   &userId=<s:property value="ruser.userId"/>"><input class="Noprn" type="button" value="返回" id="ip"></a>
   <input class="Noprn" type="button" onclick="window.print()" value="打印" id="ip">
  </div>
</html>
