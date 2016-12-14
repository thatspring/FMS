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
   									<td width="300px" colspan="3">利润表</td>
   								</tr>
    							<tr>
     								<td width="300px">时间：</td>
     								<td><s:property value="pstatement.PstatementDate"></s:property></td>
     							    <td>金额单位：￥</td>
    							</tr>
    							<tr>
    								<td width="300px">项目</td>
    								<td width="300px">金额</td>
    								<td width="300px">本年累计金额</td>
    							</tr>
    							<tr>
    								<td width="300px" colspan="3">营业收入</td>
    							</tr>
    							<tr>
     								<td width="300px">主营业收入</td>
     								<td width="300px"><s:property value="pstatement.Pincome1"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">投资效益</td>
     								<td width="300px"><s:property value="pstatement.Pincome2"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业收益</td>
     								<td width="300px"><s:property value="pstatement.Pincome3"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome3"></s:property></td>
    							</tr>
    							<tr>
    								<td width="300px" >收入总计：</td>
    								<td width="300px"><s:property value="pstatement.APincome"></s:property></td>
    								<td width="300px"><s:property value="ypstatement.APincome"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px" colspan="3">费用</td>
    							</tr>
    							<tr>
     								<td width="300px">主营业成本</td>
     								<td width="300px"><s:property value="pstatement.Pcost1"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">营业税及附加</td>
     								<td width="300px"><s:property value="pstatement.Pcost2"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">销售费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost3"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost3"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业成本</td>
     								<td width="300px"><s:property value="pstatement.Pcost4"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost4"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">管理费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost5"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost5"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">财务费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost6"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost6"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其它费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost7"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost7"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">费用总计</td>
     								<td width="300px"><s:property value="pstatement.APcost"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.APcost"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">净利润</td>
     								<td width="300px"><s:property value="pstatement.Aincome"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Aincome"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">编制人:</td>
     								<td width="150px">
     									<s:property value="pstatement.PstatementUnumber"></s:property></a></td>
     								<td></td>
    							</tr>
   							</table>
  <!--endprint-->
   <s:hidden name="userId" value="%{ruser.userId}"/>
   <a href="statementQueryp.action?fsdate=<s:property value="pstatement.PstatementDate"/>
   &userId=<s:property value="ruser.userId"/>"><input class="Noprn" type="button" value="返回" id="ip"></a>
   <input class="Noprn" type="button" onclick="window.print()" value="打印" id="ip">
  </div>
</html>
