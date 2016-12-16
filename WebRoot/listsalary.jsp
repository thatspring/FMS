<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<<<<<<< HEAD

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
=======
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
<<<<<<< HEAD
    <html:base />
=======
    <base href="<%=basePath%>">
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
    
    <title>工资发放</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet" href="header.css"/> 
<style>
html,body{
	margin:0px;
	height:100%;
}
#info_panel{
	background-color:white;
	border: 1px solid #000000;
	border-radius: 5px;
	width:95%;
	margin:auto;
	height:92%;
}
#info_panel #ibo{ 
	margin-top:2%;
	background-color:#FFFFFF;
}
#info_panel #ibo #head{
	margin-left:3%;
	margin-top:2%;
}
#info_panel #ibo #head1{
    margin-left:3%;
	display: inline-block;
	margin-top:1%;
	margin-bottom:2%;
}
#info_panel #ibo #head1 input{
	border: 1px solid #95B8E7;
	border-radius: 5px;
	font-size:19px;
}
#info_panel #ibo #head2{
	display: inline-block;
	margin-top:1%;
}
#info_panel #ibo #head2 input{
	width:100px;
	background-color: white;
	border: 1px solid #95B8E7;
	padding: 0px;
	height: 30px;
    border-radius: 5px;
    color: #000000;
    font-size:20px;
}
#info_panel #ibo #head2 input:hover{
	background-color: #95B8E7;
	color: white;
}
#info_panel #ibo #ihb{
    margin-right:3%;
	margin-left:3%;
	margin-top:2%;
}
table.imagetable {
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.imagetable th {
	background:#b5cfd2 url('source/image/tax_1_blue.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
	font-size:20px;
}
table.imagetable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
	font-color:#000000;
	font-size:18px;
}
table.imagetable td input{
	background-color: white;
	border: 1px solid #000100;
	border-radius: 5px;
	color: #000000;
	font-size:16px;
}
table.imagetable td input:hover{
	background-color: #000100;
	color: white;
}
</style>
  </head>
  
  <body>
<<<<<<< HEAD
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
<<<<<<< HEAD
     <td><s:property value="#i.checkflag"/></td>
=======
     <td>
     <s:if test="%{#i.checkflag==0}">没有认领</s:if>
     <s:else>已经认领</s:else>
     </td>
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
     <td><s:property value="#i.salarydate"/></td>
     <td><a href="employeeDelete.action?employeeID=<s:property value="#i.employeeID"/>
     &userId=<s:property value="ruser.userId"/>">删除</a></td>
    </tr>
    </s:iterator>
   </table>
   <a href="userSalary.action?userId=<s:property value="ruser.userId"/>">返回</a><br>
=======
    <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
    </div>
    <div class="topbar">
  	 <div class="title">
  	  <img alt="" src="source/image/homepage_title.png">
  	 </div>
     <div class="topbody">
      <div class="info">
                     你好！
       <s:property value="ruser.userName"/>
       <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
       <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      </div>
     </div>
    </div>
    <div id="info_panel">
    <div id="ibo">
     <form action="employeeQuery">
      <s:hidden name="userId" value="%{ruser.userId}"/>
      <div id="head"><h2>请输入日期用于查询某月的工资表</h2></div>
      <div id="head1"><input type="date" name="salaryinfo.salarydate"/></div>
      <div id="head2"><input type="submit" value="查询"></div>
      <div id="head2">
        <input type="button" value="添加员工" 
  		onclick="location.href='employeeJmpA.action?userId=<s:property value="ruser.userId"/>'"> 
      </div>
      <hr style="height:3px;border:none;border-top:3px double #95B8E7;" />
    </form>
    <div id="ihb">
     <table class="imagetable">
      <tr>
       <th style="width:400px">员工ID</th>
       <th style="width:400px">姓名</th>
       <th style="width:400px">工作天数</th>
       <th style="width:400px">请假天数</th>
       <th style="width:400px">工资/天</th>
       <th style="width:400px">应得工资</th>
       <th style="width:400px">扣款</th>
       <th style="width:400px">实得工资</th>
       <th style="width:400px">领取确认</th>
       <th style="width:400px">日期</th>
       <th style="width:400px">操作</th>
      </tr>
      <s:iterator id="i" value="slist">
      <tr>
       <td align="middle"><s:property value="#i.employeeID"/></td>
       <td align="middle"><s:property value="#i.employeeName" /></td>
       <td align="middle"><s:property value="#i.workingtime"/></td>
       <td align="middle"><s:property value="#i.leavetime"/></td>
       <td align="middle"><s:property value="#i.salarylevel"/></td>
       <td align="middle"><s:property value="#i.grosspay"/></td>
       <td align="middle"><s:property value="#i.cutpayment"/></td>
       <td align="middle"><s:property value="#i.fsalary"/></td>
       <td align="middle">
        <s:if test="%{#i.checkflag==0}">没有认领</s:if>
        <s:else>已经认领</s:else>
       </td align="middle">
       <td align="middle"><s:property value="#i.salarydate"/></td>
       <td align="middle"><a href="employeeDelete.action?employeeID=<s:property value="#i.employeeID"/>
       &userId=<s:property value="ruser.userId"/>"><input type="button" id="Button" value="删除" ></a></td>
      </tr>
     </s:iterator>
    </table>
   </div>
   </div>
   </div>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
  </body>
</html:html>
