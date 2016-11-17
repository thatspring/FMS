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
    
    <title>My JSP 'uinfomation.jsp' starting page</title>
    
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
    <h3>审核人详细信息</h3><br>
    <span>用户代码：</span><s:property value="user.userNumber"/><br>
    <span>用户真实姓名：</span><s:property value="user.userTruename"/><br>
    <span>用户所在部门：</span><s:property value="user.userDepartment"/><br>
    <span>用户现任职务：</span><s:property value="user.userPost"/><br>
    <span>用户办公电话：</span><s:property value="user.userPhone"/><br>
    <span>用户手机号码：</span><s:property value="user.userIphone"/><br>
    <span>用户电子邮箱：</span><s:property value="user.userEmail"/><br>
    <s:if test="%{invoice.invoiceDate!=null}">
    <a href="invoiceQueryByDate.action?invoice.invoiceDate=<s:property value="invoice.invoiceDate"/>
   &userId=<s:property value="ruser.userId"/>">返回</a><br>
    </s:if>
    <s:elseif test="%{pstatement.PstatementDate!=null}">
    <a href="pstatementQuery.action?fsdate=<s:property value="pstatement.PstatementDate"/>
   &userId=<s:property value="ruser.userId"/>">返回</a><br>
    </s:elseif>
  </body>
</html>
