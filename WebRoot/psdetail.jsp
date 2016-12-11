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
   <div><img src="picture/fpstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <th>项目</th><th>本月金额</th><th>累计金额</th>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="pstatement.PstatementDate"></s:property></td>
    </tr>
    <tr>
     <td>主营业收入：</td>
     <td><s:property value="pstatement.Pincome1"></s:property></td>
     <td><s:property value="ypstatement.Pincome1"></s:property></td>
    </tr>
    <tr>
     <td>投资效益：</td>
     <td><s:property value="pstatement.Pincome2"></s:property></td>
     <td><s:property value="ypstatement.Pincome2"></s:property></td>
    </tr>
    <tr>
     <td>其他营业收入：</td>
     <td><s:property value="pstatement.Pincome3"></s:property></td>
     <td><s:property value="ypstatement.Pincome3"></s:property></td>
    </tr>
    <tr>
     <td>收入总计：</td>
     <td><s:property value="pstatement.APincome"></s:property></td>
     <td><s:property value="ypstatement.APincome"></s:property></td>
    </tr>
    <tr>
     <td>主营业成本：</td>
     <td><s:property value="pstatement.Pcost1"></s:property></td>
     <td><s:property value="ypstatement.Pcost1"></s:property></td>
    </tr>
    <tr>
     <td>营业税及附加：</td>
     <td><s:property value="pstatement.Pcost2"></s:property></td>
     <td><s:property value="ypstatement.Pcost2"></s:property></td>
    </tr>
    <tr>
     <td>销售费用：</td>
     <td><s:property value="pstatement.Pcost3"></s:property></td>
     <td><s:property value="ypstatement.Pcost3"></s:property></td>
    </tr>
    <tr>
     <td>其他营业成本：</td>
     <td><s:property value="pstatement.Pcost4"></s:property></td>
     <td><s:property value="ypstatement.Pcost4"></s:property></td>
    </tr>
    <tr>
     <td>管理费用：</td>
     <td><s:property value="pstatement.Pcost5"></s:property></td>
     <td><s:property value="ypstatement.Pcost5"></s:property></td>
    </tr>
    <tr>
     <td>财务费用：</td>
     <td><s:property value="pstatement.Pcost6"></s:property></td>
     <td><s:property value="ypstatement.Pcost6"></s:property></td>
    </tr>
    <tr>
     <td>其他费用：</td>
     <td><s:property value="pstatement.Pcost7"></s:property></td>
     <td><s:property value="ypstatement.Pcost7"></s:property></td>
    </tr>
    <tr>
     <td>费用总计：</td>
     <td><s:property value="pstatement.APcost"></s:property></td>
     <td><s:property value="ypstatement.APcost"></s:property></td>
    </tr>
    <tr>
     <td>净利润：</td>
     <td><s:property value="pstatement.Aincome"></s:property></td>
     <td><s:property value="ypstatement.Aincome"></s:property></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><a href="pstatementUdetail.action?pstatement.PstatementDate=<s:property value="pstatement.PstatementDate"/>
     &userId=<s:property value="ruser.userId"/>">
     <s:property value="pstatement.PstatementUnumber"></s:property></a></td>   
    </tr>
    <tr>
   </table>
   </form>
   <a href="pstatementUpJPs.action?fsdate=<s:property value="pstatement.PstatementDate"/>
     &userId=<s:property value="ruser.userId"/>">编辑</a>
   <a href="pstatementDelete.action?fsdate=<s:property value="pstatement.PstatementDate"/>
   &PstatementId=<s:property value="pstatement.PstatementId"/>
   &userId=<s:property value="ruser.userId"/>">删除</a>
   <a href="userFstatements.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
