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
    	<div class="table">
    	</div>
    </div>
  </body>
</html>
