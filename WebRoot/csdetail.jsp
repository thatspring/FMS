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
    
    <title>My JSP 'psdetail.jsp' starting page</title>
    
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
   <div><img src="picture/fcstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <th>项目</th><th>金额</th>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="cstatement.CstatementMonth"></s:property></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:property value="cstatement.Cbin"></s:property></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:property value="cstatement.Cbout"></s:property></td>
    </tr>
    <tr>
     <td>经营活动产生现金流量净额：</td>
     <td><s:property value="cstatement.Cbinout"></s:property></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:property value="cstatement.Ciin"></s:property></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:property value="cstatement.Ciout"></s:property></td>
    </tr>
    <tr>
     <td>投资活动产生现金流量净额：</td>
     <td><s:property value="cstatement.Ciinout"></s:property></td>
    </tr>
    <tr>
     <td>收到现金：</td>
     <td><s:property value="cstatement.Crin"></s:property></td>
    </tr>
    <tr>
     <td>支付现金：</td>
     <td><s:property value="cstatement.Crout"></s:property></td>
    </tr>
    <tr>
     <td>筹集活动产生现金流量净额：</td>
     <td><s:property value="cstatement.Crinout"></s:property></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><a href="cstatementUdetail.action?cstatement.CstatementMonth=<s:property value="cstatement.CstatementMonth"/>
     &userId=<s:property value="ruser.userId"/>">
     <s:property value="cstatement.CstatementUnumber"></s:property></a></td>   
    </tr>
    <tr>
   </table>
   </form>
   <a href="cstatementUpJCs.action?fsdate=<s:property value="cstatement.CstatementMonth"/>
     &userId=<s:property value="ruser.userId"/>">编辑</a>
   <a href="cstatementDelete.action?fsdate=<s:property value="cstatement.CstatementMonth"/>
   &CstatementId=<s:property value="cstatement.CstatementId"/>
   &userId=<s:property value="ruser.userId"/>">删除</a>
   <a href="userFstatements.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
