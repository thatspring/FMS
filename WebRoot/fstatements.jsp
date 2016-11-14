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
    <form action="">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <span>请输入月份用于查询你当月的财务报表</span><br>
    <input type="month" name=""/><br>
    <span>请输入报表类型</span><br>
    <input type="text" list="pasta" name=""/>
      <datalist id="pasta">
       <option>资产负债表</option>
       <option>利润表</option>
       <option>现金流量表</option>
    </datalist>
    <br>
    <input type="submit" value="查询">
    </form>
    
    <div>
    <form action="">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增资产负债表">
    </form>
    
    <form action="">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增利润表">
    </form>
    
    <form action="">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="新增现金流量表">
    </form>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </div>
  </body>
</html>
