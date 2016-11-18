<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5>
<html:html lang="true">
  <head>
    <html:base />
    
    <title>工资表</title>

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
    <form action="employeeQuery">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <span>请输入日期用于查询某月的工资表</span><br>
    <input type="date" name="salaryinfo.salarydate"/>
    <input type="submit" value="查询">
    </form>
 
    <form action="employeeJmpA">
    <s:hidden name="userId" value="%{ruser.userId}"/>
    <input type="submit" value="添加员工">
    </form>
    <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html:html>
