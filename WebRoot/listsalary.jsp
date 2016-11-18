<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>listsalary.jsp</title>

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
   <table>
    <tr>
     <th>员工ID</th><th>姓名</th><th>工作天数</th><th>请假天数</th><th>工资/天</th><th>应得工资</th><th>扣款</th><th>实得工资</th><th>领取确认</th><th>日期</th>
    </tr>
    <s:iterator id="i" value="slist">
    <tr>
     <td><s:property value="#i.employeeID"/></td>
     <td><s:property value="#i.employeeName" /></td>
     <td><s:property value="#i.workingtime"/></td>
     <td><s:property value="#i.leavetime"/></td>
     <td><s:property value="#i.salarylevel"/></td>
     <td><s:property value="#i.grosspay"/></td>
     <td><s:property value="#i.cutpayment"/></td>
     <td><s:property value="#i.fsalary"/></td>
     <td><s:property value="#i.checkflag"/></td>
     <td><s:property value="#i.salarydate"/></td>
     <td><a href="employeeDelete.action?employeeID=<s:property value="#i.employeeID"/>
     &userId=<s:property value="ruser.userId"/>">删除</a></td>
    </tr>
    </s:iterator>
   </table>
   <a href="userSalary.action?userId=<s:property value="ruser.userId"/>">返回</a><br>
  </body>
</html:html>
