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
    
    <title>利润表</title>
    
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
			width:300px;
=======
			border: 1px solid #000000;
			height:44px;
			font-size:16px;
			width:296px;
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
				
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:17%; float:left;">
=======
      			  <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		      <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		  </div>
      	  </div>
  	    </div>
  	    <div class="panel" style="width:95%;height:92%;margin-left:2.5%">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
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
    				<div class="table_panel">
						<form action="pstatementAdd">
   							<s:hidden name="userId" value="%{ruser.userId}"/></span>
   							<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s1">
   								<tr>
   									<td width="300px" colspan="3">利润表</td>
   								</tr>
    							<tr>
<<<<<<< HEAD
     								<td width="300px" colspan="3" >时间：
     									<input type="month" name="pstatement.PstatementDate"/>
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									金额单位：￥</td>
=======
    								<td>编制报表日期：</td>
                                    <td><input type="month" name="pstatement.PstatementDate"/></td>
                                    <td>金额单位：￥</td>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    							</tr>
    							<tr>
    								<td width="300px">项目</td>
    								<td width="300px">金额</td>
    								<td width="300px">本年累计金额</td>
    							</tr>
    							<tr>
    								<td width="300px" colspan="3">营业收入</td>
    							</tr>
    							<tr>
     								<td width="300px">主营业收入</td>
     								<td width="300px"><input type="text" name="pstatement.Pincome1"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">投资效益</td>
     								<td width="300px"><input type="text" name="pstatement.Pincome2"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业收益</td>
     								<td width="300px"><input type="text" name="pstatement.Pincome3"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
    								<td width="300px" >收入总计：</td>
    								<td width="300px"></td>
    								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px" colspan="3">费用</td>
    							</tr>
    							<tr>
     								<td width="300px">主营业成本</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost1"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">营业税及附加</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost2"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">销售费用</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost3"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业成本</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost4"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">管理费用</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost5"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">财务费用</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost6"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">其它费用</td>
     								<td width="300px"><input type="text" name="pstatement.Pcost7"/></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">费用总计</td>
     								<td width="300px"></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
     								<td width="300px">净利润</td>
     								<td width="300px"></td>
     								<td width="300px"></td>
    							</tr>
    							<tr>
<<<<<<< HEAD
     								<td width="150px">编制人:</td>
     								<td width="150px" colspan="5" style="text-align:left;"><input type="text" name="pstatement.PstatementUnumber" width="750px"/></td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" style="width:100px;height:30px;margin-top:5px;">
   						</form>
					</div>
				</div>
				<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:18%; float:left;">
							<form action="statementQueryb" >
								<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询资产负载表" class="Button" >
    						</form>
    					</div>
    					<div class="add" style="width:82%; float:right;">
    						<form action="fstatementJmpBs">
    							<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增资产负债表" class="Button">
=======
     								<td width="150px">编制人:</td>	
     							 	<td width="150px"><input type="text" name="pstatement.PstatementUnumber"/></td>
     							 	<td></td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" id="iw">
   						</form>
					</div>
				</div>
				<div title="现金流量表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="display:inline-block;">
							<form action="statementQueryc" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询现金流量表" class="Button">
    						</form>
    					</div>
    					<div class="add" style="display:inline-block;">
    						<form action="fstatementJmpCs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增现金流量表" class="Button">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						</form>
    					</div>
    				</div>
				</div>
<<<<<<< HEAD
				<div title="现金流量表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:18%; float:left;">
							<form action="statementQueryc" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询现金流量表" class="Button">
    						</form>
    					</div>
    					<div class="add" style="width:82%; float:right;">
    						<form action="fstatementJmpCs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增现金流量表" class="Button">
=======
				<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="display:inline-block;">
							<form action="statementQueryb" >
								<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询资产负载表" class="Button" >
    						</form>
    					</div>
    					<div class="add" style="display:inline-block;">
    						<form action="fstatementJmpBs">
    							<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增资产负债表" class="Button">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						</form>
    					</div>
    				</div>
				</div>
			</div>
		</div>
  </body>
</html>
