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
    
<<<<<<< HEAD
    <title>My JSP 'invoice.jsp' starting page</title>
=======
    <title>发票</title>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    
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
<<<<<<< HEAD
=======
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
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
<<<<<<< HEAD
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
=======
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
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    	<div class="invoice_panel">
    		<form action="invoiceUpdate">
    			<div class="invoice">
   					<s:hidden name="userId" value="%{ruser.userId}"/></span>
   					<s:hidden name="invoice.invoiceId" value="%{invoice.invoiceId}"/></span>
   					<h1>发票</h1>
   					<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;'>
    					<tr>
     						<td width="200px" colspan="4" height="30px">发票代码No：
<<<<<<< HEAD
     							<input type="text" name="invoice.invoiceNumber" value="<s:property value='%{invoice.invoiceNumber}'/>" style="width:295px;height:30px">
     						</td>
     						<td width="200px" colspan="4" height="30px">开票日期：
     							<input type="Date" name="invoice.invoiceDate" value="<s:property value='%{invoice.invoiceDate}'/>">
=======
     							<input type="text" name="invoice.invoiceNumber" value="<s:property value='%{invoice.invoiceNumber}'/>" style="width:293px;height:30px">
     						</td>
     						<td width="200px" colspan="4" height="30px">开票日期：
     							<input type="text" name="invoice.invoiceDate" value="<s:property value='%{invoice.invoiceDate}'/>"  style="width:312px;height:30px">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
<<<<<<< HEAD
     							<input type="text" name="invoice.invoiceCmoney" value="<s:property value='%{invoice.invoiceCmoney}'/>" style="width:750px;height:30px">
=======
     							<input type="text" name="invoice.invoiceCmoney" value="<s:property value='%{invoice.invoiceCmoney}'/>" style="width:746px;height:30px">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
<<<<<<< HEAD
     							<input type="text" name="invoice.invoiceType" value="<s:property value='%{invoice.invoiceType}'/>"/>
=======
     							<input type="text" name="invoice.invoiceType" value="<s:property value='%{invoice.invoiceType}'/>" style="width:200px;height:30px"/>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
     						</td>
    					</tr>
   					</table>
   				</div>
<<<<<<< HEAD
   				<input type="submit" value="提交">
=======
   				<div class="ii"><input type="submit" value="提交" id="iw"></div>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
   			</form>
    	</div>
    </div>
  </body>
</html>
