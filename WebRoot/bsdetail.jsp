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
   <div><img src="picture/fbstatement.png" alt=""></div>
   <s:hidden name="userId" value="%{ruser.userId}"/></span>
   <table>
    <th>项目</th><th>年初金额</th><th>本季金额</th>
    <tr>
     <td>报表编制日期：</td>
     <td><s:property value="bstatement.BstatementMonth"></s:property></td>
    </tr>
    <tr>
     <td>货币资金：</td>
     <td><s:property value="ybstatement.Bcurrent1"></s:property></td>
     <td><s:property value="bstatement.Bcurrent1"></s:property></td>
    </tr>
    <tr>
     <td>应收帐款：</td>
     <td><s:property value="ybstatement.Bcurrent2"></s:property></td>
     <td><s:property value="bstatement.Bcurrent2"></s:property></td>
    </tr>
    <tr>
     <td>存货：</td>
     <td><s:property value="ybstatement.Bcurrent3"></s:property></td>
     <td><s:property value="bstatement.Bcurrent3"></s:property></td>
    </tr>
    <tr>
     <td>流动资产合计：</td>
     <td><s:property value="ybstatement.BAcurrent"></s:property></td>
     <td><s:property value="bstatement.BAcurrent"></s:property></td>
    </tr>
    <tr>
     <td>固定资产原产值：</td>
     <td><s:property value="ybstatement.Bfixed1"></s:property></td>
     <td><s:property value="bstatement.Bfixed1"></s:property></td>
    </tr>
    <tr>
     <td>累计折旧：</td>
     <td><s:property value="ybstatement.Bfixed2"></s:property></td>
     <td><s:property value="bstatement.Bfixed2"></s:property></td>
    </tr>
    <tr>
     <td>固定资产净产值：</td>
     <td><s:property value="ybstatement.Bfixed3"></s:property></td>
     <td><s:property value="bstatement.Bfixed3"></s:property></td>
    </tr>
    <tr>
     <td>固定资产合计：</td>
     <td><s:property value="ybstatement.BAfixed"></s:property></td>
     <td><s:property value="bstatement.BAfixed"></s:property></td>
    </tr>
    <tr>
     <td>资产合计：</td>
     <td><s:property value="ybstatement.BAcf"></s:property></td>
     <td><s:property value="bstatement.BAcf"></s:property></td>
    </tr>
    <tr>
     <td>短期负债：</td>
     <td><s:property value="ybstatement.Bliabilities1"></s:property></td>
     <td><s:property value="bstatement.Bliabilities1"></s:property></td>
    </tr>
    <tr>
     <td>应付帐款：</td>
     <td><s:property value="ybstatement.Bliabilities2"></s:property></td>
     <td><s:property value="bstatement.Bliabilities2"></s:property></td>
    </tr>
    <tr>
     <td>应交税金：</td>
     <td><s:property value="ybstatement.Bliabilities3"></s:property></td>
     <td><s:property value="bstatement.Bliabilities3"></s:property></td>
    </tr>
    <tr>
     <td>流动负债合计：</td>
     <td><s:property value="ybstatement.BAliabilities"></s:property></td>
     <td><s:property value="bstatement.BAliabilities"></s:property></td>
    </tr>
    <tr>
     <td>实收资本：</td>
     <td><s:property value="ybstatement.Bsurplus1"></s:property></td>
     <td><s:property value="bstatement.Bsurplus1"></s:property></td>
    </tr>
    <tr>
     <td>盈余公积：</td>
     <td><s:property value="ybstatement.Bsurplus2"></s:property></td>
     <td><s:property value="bstatement.Bsurplus2"></s:property></td>
    </tr>
    <tr>
     <td>未分配利润：</td>
     <td><s:property value="ybstatement.Bsurplus3"></s:property></td>
     <td><s:property value="bstatement.Bsurplus3"></s:property></td>
    </tr>
    <tr>
     <td>所有者权益合计：</td>
     <td><s:property value="ybstatement.BAsurplus"></s:property></td>
     <td><s:property value="bstatement.BAsurplus"></s:property></td>
    </tr>
    <tr>
     <td>负债及所有者权益：</td>
     <td><s:property value="ybstatement.BAls"></s:property></td>
     <td><s:property value="bstatement.BAls"></s:property></td>
    </tr>
    <tr>
     <td>编制人：</td>
     <td><a href="bstatementUdetail.action?bstatement.BstatementMonth=<s:property value="bstatement.BstatementMonth"/>
     &userId=<s:property value="ruser.userId"/>">
     <s:property value="bstatement.BstatementUnumber"></s:property></a></td>
    </tr>
    <tr>
   </table>
   </form>
   <a href="bstatementUpJBs.action?fsdate=<s:property value="bstatement.BstatementMonth"/>
     &userId=<s:property value="ruser.userId"/>">编辑</a>
   <a href="bstatementDelete.action?fsdate=<s:property value="bstatement.bstatementMonth"/>
   &BstatementId=<s:property value="bstatement.BstatementId"/>
   &userId=<s:property value="ruser.userId"/>">删除</a>
   <a href="userFstatements.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
