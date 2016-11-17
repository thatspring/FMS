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
    
    <title>My JSP 'pstatement.jsp' starting page</title>
    
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
   <form action="pstatementAdd">
   <div><img src="picture/fpstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <tr>
     <td>报表编制日期：</td>
     <td><input type="month" name="pstatement.PstatementDate"/></td>
    </tr>
    <tr>
     <td>主营业收入：</td>
     <td><input type="text" name="pstatement.Pincome1"/></td>
    </tr>
    <tr>
     <td>投资效益：</td>
     <td><input type="text" name="pstatement.Pincome2"/></td>
    </tr>
    <tr>
     <td>其他营业收入：</td>
     <td><input type="text" name="pstatement.Pincome3"/></td>
    </tr>
    <tr>
     <td>主营业成本：</td>
     <td><input type="text" name="pstatement.Pcost1"/></td>
    </tr>
    <tr>
     <td>营业税及附加：</td>
     <td><input type="text" name="pstatement.Pcost2"/></td>
    </tr>
    <tr>
     <td>销售费用：</td>
     <td><input type="text" name="pstatement.Pcost3"/></td>
    </tr>
    <tr>
     <td>其他营业成本：</td>
     <td><input type="text" name="pstatement.Pcost4"/></td>
    </tr>
    <tr>
     <td>管理费用：</td>
     <td><input type="text" name="pstatement.Pcost5"/></td>
    </tr>
    <tr>
     <td>财务费用：</td>
     <td><input type="text" name="pstatement.Pcost6"/></td>
    </tr>
    <tr>
     <td>其他费用：</td>
     <td><input type="text" name="pstatement.Pcost7"/></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><input type="text" name="pstatement.PstatementUnumber"/></td>
    </tr>
    <tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
