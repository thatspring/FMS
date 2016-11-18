<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>新增员工</title>

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
   <form action="employeeAdd">
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <tr>
     <th>员工ID</th><th>姓名</th><th>工作天数</th><th>请假天数</th><th style="width: 129px; ">工资/天</th><th>领取审核</th><th>时间</th>
    </tr>
    <tr>
     <td><input type="text" name="salaryinfo.employeeID"/></td>
     <td><input type="text" name="salaryinfo.employeeName"/></td>
     <td><input type="text" name="salaryinfo.workingtime"/></td>
     <td><input type="text" name="salaryinfo.leavetime"/></td>
     <td>￥<input type="text" name="salaryinfo.salarylevel" style="width: 111px; "></td>
     <td><input type="text" name="salaryinfo.checkflag"/></td>
     <td><input type="date" name="salaryinfo.salarydate"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html:html>
