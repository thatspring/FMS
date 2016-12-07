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
    
    <title>My JSP 'fstatements.jsp' starting page</title>
    
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
    <div>
    <span>请输入月份用于查询你当月的财务报表</span><br>
    
    <form action="statementQueryb">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="month" name="fsdate"/>
    <input type="submit" value="查询资产负载表" >
    </form>
    
    <form action="statementQueryp">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="month" name="fsdate"/>
    <input type="submit" value="查询利润表" >
    </form>
    
    <form action="statementQueryc">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="month" name="fsdate"/>
    <input type="submit" value="查询现金流量表" >
    </form>
    </div>
    
    <div>
    <form action="fstatementJmpBs">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增资产负债表">
    </form>
    
    <form action="fstatementJmpPs">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增利润表">
    </form>
    
    <form action="fstatementJmpCs">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增现金流量表">
    </form>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </div>
  </body>
</html>
