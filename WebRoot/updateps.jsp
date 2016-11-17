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
   <form action="pstatementUpdate">
   <div><img src="picture/fpstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <s:hidden name="pstatement.PstatementId" value="%{pstatement.PstatementId}"/></span>
   <s:hidden name="pstatement.PstatementDate" value="%{pstatement.PstatementDate}"/></span>
   <s:hidden name="fsdate" value="%{pstatement.PstatementDate}"/></span>
   <table>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="%{pstatement.PstatementDate}"/></td>
    </tr>
    <tr>
     <td>主营业收入：</td>
     <td><s:textfield name="pstatement.Pincome1" value="%{pstatement.Pincome1}"/></td>
    </tr>
    <tr>
     <td>投资效益：</td>
     <td><s:textfield name="pstatement.Pincome2" value="%{pstatement.Pincome2}"/></td>
    </tr>
    <tr>
     <td>其他营业收入：</td>
     <td><s:textfield name="pstatement.Pincome3" value="%{pstatement.Pincome3}"/></td>
    </tr>
    <tr>
     <td>主营业成本：</td>
     <td><s:textfield name="pstatement.Pcost1" value="%{pstatement.Pcost1}"/></td>
    </tr>
    <tr>
     <td>营业税及附加：</td>
     <td><s:textfield name="pstatement.Pcost2" value="%{pstatement.Pcost2}"/></td>
    </tr>
    <tr>
     <td>销售费用：</td>
     <td><s:textfield name="pstatement.Pcost3" value="%{pstatement.Pcost3}"/></td>
    </tr>
    <tr>
     <td>其他营业成本：</td>
     <td><s:textfield name="pstatement.Pcost4" value="%{pstatement.Pcost4}"/></td>
    </tr>
    <tr>
     <td>管理费用：</td>
     <td><s:textfield name="pstatement.Pcost5" value="%{pstatement.Pcost5}"/></td>
    </tr>
    <tr>
     <td>财务费用：</td>
     <td><s:textfield name="pstatement.Pcost6" value="%{pstatement.Pcost6}"/></td>
    </tr>
    <tr>
     <td>其他费用：</td>
     <td><s:textfield name="pstatement.Pcost7" value="%{pstatement.Pcost7}"/></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><s:textfield name="pstatement.PstatementUnumber" value="%{pstatement.PstatementUnumber}"/></td>
    </tr>
    <tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
