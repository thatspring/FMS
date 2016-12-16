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
<<<<<<< HEAD
=======
<style>
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
</style>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
    	<div class="table">
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
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    	</div>
    </div>
  </body>
</html>
