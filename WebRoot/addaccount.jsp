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
    
    <title>记账功能</title>
    
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
	font-size:18px;
	font-color:#000000;
}
table.imagetable td select{
	border-radius: 5px;
	font-size:18px;
}
table.imagetable td input.ti{
	border-radius: 5px;
	font-size:18px;
}
table.imagetable td input.td{
	border-radius: 5px;
	font-size:16px;
}
table.imagetable td input.tb{
	background-color: white;
	border: 1px solid #000100;
	border-radius: 5px;
	color: #000000;
	font-size:20px;
}
table.imagetable td input.tb:hover{
	background-color: #000100;
	color: white;
}
</style>
  </head>
  
  <body>
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
     <form action="accountQuery">
      <s:hidden name="userId" value="%{ruser.userId}"/>
      <div id="head"><h2>请输入日期用于查询你当日的账目</h2></div>
      <div id="head1"><input type="date" name="account.accountDate"/></div>
      <div id="head2"><input type="submit" value="查询"></div>
      <div id="head2">
       <input type="button" value="添加账目" 
  		onclick="location.href='accountJmpA.action?userId=<s:property value="ruser.userId"/>'"> 
      </div>
      <hr style="height:3px;border:none;border-top:3px double #95B8E7;" />
     </form>
     <form action="accountAdd">
       <s:hidden name="userId" value="%{ruser.userId}"/></span>
       <div id="ihb">
       <table class="imagetable">
        <tr>
         <th style="width:15%">项目</th>
         <th style="width:15%">金额</th>
         <th style="width:6%">类型</th>
         <th style="width:15%">日期</th>
         <th style="width:6%">操作</th>
        </tr>
        <tr>
         <td align="middle"><input type="text" name="account.accountProject" class="ti"/></td>
         <td align="middle">￥<input type="text" name="account.accountMoney" class="ti"/></td>
         <td align="middle">
          <select name="account.accountType">
          <option select value="out">out</option>
          <option value="in">in</option>
         </select>
         </td>
         <td align="middle"><input type="date" name="account.accountDate" class="td"/></td>
         <td align="middle"><input type="submit" value="提交" class="tb"/></td>
        </tr>
       </table>
       </div>
     </form>
     </div>
   </div>
  </body>
</html>
