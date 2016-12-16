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
    
<<<<<<< HEAD
    <title>My JSP 'pstatement.jsp' starting page</title>
=======
    <title>现金流量表</title>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="source/demo.css">
	<script type="text/javascript" src="source/jquery-easyui-1.5/jquery.min.js"></script>
	<script type="text/javascript" src="source/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	<link type="text/css" rel="stylesheet" href="table_tabs.css"/>
	<style>
		td input{
<<<<<<< HEAD
			border:0px;
			height:48px;
			font-size:15px;
			paddind-left:2px;
			width:370px;
=======
			height:44px;
			font-size:16px;
			border: 1px solid #000000;
			width:446px;
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
<<<<<<< HEAD
      			  <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      			  <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		  </div>
      	  </div>
  	    </div>
		<div class="panel" style="width:95%;height:93.5%;margin-left:2.5%">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="现金流量表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:18%; float:left;">
=======
      			  <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		      <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		  </div>
      	  </div>
  	    </div>
		<div class="panel" style="width:95%;height:92%;margin-left:2.5%">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="现金流量表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
							<form action="statementQueryc" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询现金流量表" class="Button">
    						</form>
    					</div>
<<<<<<< HEAD
    					<div class="add" style="width:82%; float:right;">
=======
    					<div class="add" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						<form action="fstatementJmpCs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增现金流量表" class="Button">
    						</form>
    					</div>
    				</div>
    				<div class="table_panel">
						<form action="cstatementUpdate">
   							<s:hidden name="userId" value="%{ruser.userId}"/></span>
   							<s:hidden name="cstatement.CstatementId" value="%{cstatement.CstatementId}"/></span>
   							<s:hidden name="cstatement.CstatementMonth" value="%{cstatement.CstatementMonth}"/></span>
   							<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s1">
   								<tr>
   									<td width="450px" colspan="2">现金流量表</td>
   								</tr>
    							<tr>
<<<<<<< HEAD
     								<td width="450px" colspan="2" >报表编制日期：
     									<s:property value="%{cstatement.CstatementMonth}"/>
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									金额单位：￥</td>
=======
     								<td width="450px">报表编制日期：
     									<s:property value="%{cstatement.CstatementMonth}"/></td>
     								<td>金额单位：￥</td>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    							</tr>
    							<tr>
    								<td width="450px">项目</td>
    								<td width="450px">金额</td>
    							</tr>
    							<tr>
    								<td width="450px" colspan="2">经营活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><input type="text" name="cstatement.Cbin" value="<s:property value='%{cstatement.Cbin}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><input type="text" name="cstatement.Cbout" value="<s:property value='%{cstatement.Cbout}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"></td>
    							</tr>
    							<tr>
     								<td width="450px" colspan="2">投资活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><input type="text" name="cstatement.Ciin" value="<s:property value='%{cstatement.Ciin}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><input type="text" name="cstatement.Ciout" value="<s:property value='%{cstatement.Ciout}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"></td>
    							</tr>
    							<tr>
     								<td width="450px" colspan="2">筹集活动</td>
    							</tr>
    							<tr>
     								<td width="450px">收到现金</td>
     								<td width="450px"><input type="text" name="cstatement.Crin" value="<s:property value='%{cstatement.Crin}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">支付现金</td>
     								<td width="450px"><input type="text" name="cstatement.Crout" value="<s:property value='%{cstatement.Crout}'/>"></td>
    							</tr>
    							<tr>
     								<td width="450px">净额</td>
     								<td width="450px"></td>
    							</tr>
    							<tr>
<<<<<<< HEAD
     								<td width="450px" colspan="2">编制人:
     									<input type="text" name="cstatement.CstatementUnumber" value="<s:property value='%{cstatement.CstatementUnumber}'/>">
     								</td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" style="width:100px;height:30px;margin-top:5px;">
=======
     								<td width="450px">编制人:</td>
     								<td><input type="text" name="cstatement.CstatementUnumber" value="<s:property value='%{cstatement.CstatementUnumber}'/>">
     								</td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" id="iw">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
   						</form>
					</div>
				</div>
				<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
<<<<<<< HEAD
						<div class="search" style="width:18%; float:left;">
=======
						<div class="search" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
							<form action="statementQueryb" >
								<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询资产负载表" class="Button" >
    						</form>
    					</div>
<<<<<<< HEAD
    					<div class="add" style="width:82%; float:right;">
=======
    					<div class="add" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						<form action="fstatementJmpBs">
    							<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增资产负债表" class="Button">
    						</form>
    					</div>
    				</div>
				</div>
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
<<<<<<< HEAD
						<div class="search" style="width:17%; float:left;">
=======
						<div class="search" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
							<form action="statementQueryp" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询利润表" class="Button">
    						</form>
    					</div>
<<<<<<< HEAD
    					<div class="add" style="width:83%; float:right;">
=======
    					<div class="add" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						<form action="fstatementJmpPs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增利润表" class="Button">
    						</form>
    					</div>
    				</div>
				</div>
			</div>
		</div>
  </body>
</html>
