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
   <form action="bstatementUpdate">
   <div><img src="picture/fbstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <s:hidden name="bstatement.BstatementId" value="%{bstatement.BstatementId}"/></span>
   <s:hidden name="bstatement.BstatementMonth" value="%{bstatement.BstatementMonth}"/></span>
   <table>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="%{bstatement.BstatementMonth}"/></td>
    </tr>
    <tr>
     <td>货币资金：</td>
     <td><s:textfield name="bstatement.Bcurrent1" value="%{bstatement.Bcurrent1}"/></td>
    </tr>
    <tr>
     <td>应收帐款：</td>
     <td><s:textfield name="bstatement.Bcurrent2" value="%{bstatement.Bcurrent2}"/></td>
    </tr>
    <tr>
     <td>存货：</td>
     <td><s:textfield name="bstatement.Bcurrent3" value="%{bstatement.Bcurrent3}"/></td>
    </tr>
    <tr>
     <td>固定资产原产值：</td>
     <td><s:textfield name="bstatement.Bfixed1" value="%{bstatement.Bfixed1}"/></td>
    </tr>
    <tr>
     <td>累计折旧：</td>
     <td><s:textfield name="bstatement.Bfixed2" value="%{bstatement.Bfixed2}"/></td>
    </tr>
    <tr>
     <td>固定资产净产值：</td>
     <td><s:textfield name="bstatement.Bfixed3" value="%{bstatement.Bfixed3}"/></td>
    </tr>
    <tr>
     <td>短期负债：</td>
     <td><s:textfield name="bstatement.Bliabilities1" value="%{bstatement.Bliabilities1}"/></td>
    </tr>
    <tr>
     <td>应付帐款：</td>
     <td><s:textfield name="bstatement.Bliabilities2" value="%{bstatement.Bliabilities2}"/></td>
    </tr>
    <tr>
     <td>应交税金：</td>
     <td><s:textfield name="bstatement.Bliabilities3" value="%{bstatement.Bliabilities3}"/></td>
    </tr>
    <tr>
     <td>实收资本：</td>
     <td><s:textfield name="bstatement.Bsurplus1" value="%{bstatement.Bsurplus1}"/></td>
    </tr>
    <tr>
     <td>盈余公积：</td>
     <td><s:textfield name="bstatement.Bsurplus2" value="%{bstatement.Bsurplus2}"/></td>
    </tr>
    <tr>
     <td>未分配利润：</td>
     <td><s:textfield name="bstatement.Bsurplus3" value="%{bstatement.Bsurplus3}"/></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><s:textfield name="bstatement.BstatementUnumber" value="%{bstatement.BstatementUnumber}"/></td>
    </tr>
   </table>
   <input type="submit" value="提交">
   </form>
  </body>
</html>

