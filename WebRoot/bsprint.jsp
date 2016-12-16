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
   <td width="150px" colspan="6">资产负债表</td>
  </tr>
  <tr>
    <td width="150px">报表编制日期：</td>
    <td><s:property value="bstatement.BstatementMonth"></s:property></td>
    <td colspan=3></td>
    <td>金额单位：￥</td>
   </tr>
   <tr>
    <td width="150px">资产</td>
    <td width="150px">年初余额</td>
    <td width="150px">月末余额</td>
    <td width="150px">负债和所有者权益</td>
    <td width="150px">年初余额</td>
    <td width="150px">月末余额</td>
   </tr>
   <tr>
    <td width="150px" style="text-align:left">流动资产:</td>
    <td width="150px"></td>
    <td width="150px"></td>
    <td width="150px" style="text-align:left">流动负债:</td>
    <td width="150px"></td>
    <td width="150px"></td>
   </tr>
   <tr>
    <td width="150px">货币资金</td>
    <td width="150px"><s:property value="ybstatement.Bcurrent1"></s:property></td>
    <td width="150px"><s:property value="bstatement.Bcurrent1"></s:property></td>
    <td width="150px">短期负债</td>
    <td width="150px"><s:property value="ybstatement.Bliabilities1"></s:property></td>
    <td width="150px"><s:property value="bstatement.Bliabilities1"></s:property></td>
   </tr>
   <tr>
    <td width="150px">应收帐款</td>
    <td width="150px"><s:property value="ybstatement.Bcurrent2"></s:property></td>
    <td width="150px"><s:property value="bstatement.Bcurrent2"></s:property></td>
    <td width="150px">应付帐款</td>
    <td width="150px"><s:property value="ybstatement.Bliabilities2"></s:property></td>
    <td width="150px"><s:property value="bstatement.Bliabilities2"></s:property></td>
   </tr>
   <tr>
     <td width="150px">存货</td>
     <td width="150px"><s:property value="ybstatement.Bcurrent3"></s:property></td>
     <td width="150px"><s:property value="bstatement.Bcurrent3"></s:property></td>
     <td width="150px">应交税金</td>
     <td width="150px"><s:property value="ybstatement.Bliabilities3"></s:property></td>
     <td width="150px"><s:property value="bstatement.Bliabilities3"></s:property></td>
    </tr>
    <tr>
     <td width="150px" style="text-align:left">流动资产合计：</td>
	 <td width="150px"><s:property value="ybstatement.BAcurrent"></s:property></td>
	 <td width="150px"><s:property value="bstatement.BAcurrent"></s:property></td>
     <td width="150px" style="text-align:left">流动负债合计：</td>
	 <td width="150px"><s:property value="ybstatement.BAliabilities"></s:property></td>
	 <td width="150px"><s:property value="bstatement.BAliabilities"></s:property></td>
	</tr>
	<tr>
	 <td width="150px" style="text-align:left">固定资产：</td>
	 <td width="150px"></td>
	 <td width="150px"></td>
	 <td width="150px" style="text-align:left">所有者权益：</td>
	 <td width="150px"></td>
	 <td width="150px"></td>
    </tr>
	<tr>
	 <td width="150px">固定资产原产值</td>
	 <td width="150px"><s:property value="ybstatement.Bfixed1"></s:property></td>
	 <td width="150px"><s:property value="bstatement.Bfixed1"></s:property></td>
	 <td width="150px">实收资本</td>
	 <td width="150px"><s:property value="ybstatement.Bsurplus1"></s:property></td>
	 <td width="150px"><s:property value="bstatement.Bsurplus1"></s:property></td>
    </tr>
 	<tr>
 	 <td width="150px">累计折旧</td>
	 <td width="150px"><s:property value="ybstatement.Bfixed2"></s:property></td>
	 <td width="150px"><s:property value="bstatement.Bfixed2"></s:property></td>
     <td width="150px">盈余公积</td>
     <td width="150px"><s:property value="ybstatement.Bsurplus2"></s:property></td>
     <td width="150px"><s:property value="bstatement.Bsurplus2"></s:property></td>
   	</tr>
 	<tr>
     <td width="150px">固定资产净产值</td>
     <td width="150px"><s:property value="ybstatement.Bfixed3"></s:property></td>
  	 <td width="150px"><s:property value="bstatement.Bfixed3"></s:property></td>
	 <td width="150px">未分配利润</td>
     <td width="150px"><s:property value="ybstatement.Bsurplus3"></s:property></td>
     <td width="150px"><s:property value="bstatement.Bsurplus3"></s:property></td>
	</tr>
  	<tr>
  	 <td width="150px" style="text-align:left">固定资产合计：</td>
     <td width="150px"><s:property value="ybstatement.BAfixed"></s:property></td>
     <td width="150px"><s:property value="bstatement.BAfixed"></s:property></td>
	 <td width="150px" style="text-align:left">所有者权益合计：</td>
	 <td width="150px"><s:property value="ybstatement.BAsurplus"></s:property></td>
     <td width="150px"><s:property value="bstatement.BAsurplus"></s:property></td>
  	</tr>
    <tr>
	 <td width="150px" style="text-align:left">资产合计：</td>
     <td width="150px"><s:property value="ybstatement.BAcf"></s:property></td>
     <td width="150px"><s:property value="bstatement.BAcf"></s:property></td>
     <td width="150px" style="text-align:left">负债及所有者权益：</td>
     <td width="150px"><s:property value="ybstatement.BAls"></s:property></td>
     <td width="150px"><s:property value="bstatement.BAls"></s:property></td>
   </tr>
   <tr>
    <td width="150px">编制人:</td>
    <td width="150px">
	  <s:property value="bstatement.BstatementUnumber"></s:property></a></td>
    <td width="150px" colspan=4>
   </tr>
   </table>
  <!--endprint-->
   <s:hidden name="userId" value="%{ruser.userId}"/>
   <a href="statementQueryb.action?fsdate=<s:property value="bstatement.BstatementMonth"/>
   &userId=<s:property value="ruser.userId"/>"><input class="Noprn" type="button" value="返回" id="ip"></a>
   <input class="Noprn" type="button" onclick="window.print()" value="打印" id="ip">
  </div>
</html>
