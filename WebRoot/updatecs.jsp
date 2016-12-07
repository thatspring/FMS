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
    
    <title>My JSP 'updateps.jsp' starting page</title>
    
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
   <form action="cstatementUpdate">
   <div><img src="picture/fcstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <s:hidden name="cstatement.CstatementId" value="%{cstatement.CstatementId}"/></span>
   <s:hidden name="cstatement.CstatementMonth" value="%{cstatement.CstatementMonth}"/></span>
   <table>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="%{cstatement.CstatementMonth}"/></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:textfield name="cstatement.Cbin" value="%{cstatement.Cbin}"/></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:textfield name="cstatement.Cbout" value="%{cstatement.Cbout}"/></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:textfield name="cstatement.Ciin" value="%{cstatement.Ciin}"/></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:textfield name="cstatement.Ciout" value="%{cstatement.Ciout}"/></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:textfield name="cstatement.Crin" value="%{cstatement.Crin}"/></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:textfield name="cstatement.Crout" value="%{cstatement.Crout}"/></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><s:textfield name="cstatement.CstatementUnumber" value="%{cstatement.CstatementUnumber}"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
