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
    
    <title>发票</title>
    
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
html,body{
	margin:0px;
	height:100%;
}
#info_panel{
	background-color:white;
	border: 1px solid #000000;
	border-radius: 5px;
	width:95%;
	margin:auto;
	height:92%;
}
#info_panel #ibo{ 
	margin-top:2%;
	background-color:#FFFFFF;
}
#info_panel #ibo #head{
	margin-left:3%;
	margin-top:2%;
}
#info_panel #ibo #head1{
    margin-left:3%;
	display: inline-block;
	margin-top:1%;
	margin-bottom:2%;
}
#info_panel #ibo #head1 input{
	border: 1px solid #95B8E7;
	border-radius: 5px;
	font-size:19px;
}
#info_panel #ibo #head2{
	display: inline-block;
	margin-top:1%;
	margin-bottom:2%;
}
#info_panel #ibo #head2 input{
    width:100px;
	background-color: white;
	border: 1px solid #95B8E7;
	padding: 0px;
	height: 30px;
    border-radius: 5px;
    color: #000000;
    font-size:20px;
}
#info_panel #ibo #head2 input:hover{
	background-color: #95B8E7;
	color: white;
}
#info_panel #ibo #ihb{
	margin-right:12%;
	margin-left:12%;
	margin-top:2%;
}
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
      			<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		    <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		</div>
      	</div>
  	</div>
  	<div id="info_panel">
  		<div id="ibo">
    		<form action="invoiceQueryByDate">
    			<s:hidden name="userId" value="%{ruser.userId}"/>
    			<div id="head"><h3>请输入日期用于查询你当日的发票</h3></div>
    			<div id="head1"><input type="date" name="invoice.invoiceDate" class="date"/></div>
    			<div id="head2"><input type="submit" value="查询" class="button"></div>
    		    <div id="head2">
    		      <input type="button" value="添加发票" 
  		          onclick="location.href='invoiceJmpI.action?userId=<s:property value="ruser.userId"/>'"> 
    		    </div>
    		    <hr style="height:3px;border:none;border-top:3px double #95B8E7;" />
    		</form>
    	</div>
    	<div class="invoice_panel">
    			<div class="invoice">
   					<h1>发票</h1>
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
   				<div class="ii"><a href="invoiceQueryByDate.action?invoice.invoiceDate=<s:property value="invoice.invoiceDate"/>
                &userId=<s:property value="ruser.userId"/>"><input type="button" value="返回列表" id="iw"></a>
                                <a href="invoicePrint.action?invoiceId=<s:property value="invoice.invoiceId"/>
     			&userId=<s:property value="ruser.userId"/>"><input type="button" value="打印预览" id="iw"/></div>
    	</div>
    </div>
  </body>
</html>
