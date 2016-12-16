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
    
    <title>资产及负载表</title>
    
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
<<<<<<< HEAD
	<style>
		td input{
			border:0px;
			height:48px;
			font-size:15px;
			paddind-left:2px;
		}
	</style>
=======
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
		<div class="panel" style="width:1450px;height:1000%;margin-left:70px">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%;display:inline-block">
						<div class="search" style="width:18%; display:inline-block">
=======
      			  <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		      <a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		  </div>
      	  </div>
  	    </div>
		<div class="panel" style="width:95%;height:92%;margin-left:2.5%">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%;display:inline-block">
						<div class="search" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
							<form action="statementQueryb" >
								<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询资产负载表" class="Button" >
    						</form>
    					</div>
<<<<<<< HEAD
    					<div class="add" style="width:82%; display:inline-block">
=======
    					<div class="add" style="display:inline-block;">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    						<form action="fstatementJmpBs">
    							<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增资产负债表" class="Button">
    						</form>
    					</div>
    				</div>
    				<div class="table_panel">
						<form action="bstatementAdd">
   							<s:hidden name="userId" value="%{ruser.userId}"/></span>
   							<table cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s1">
   								<tr>
   									<td width="150px" colspan="6">资产负债表</td>
   								</tr>
    							<tr>
<<<<<<< HEAD
     								<td width="150px" colspan="6" >报表编制日期：
     									<input type="month" name="bstatement.BstatementMonth"/>
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									金额单位：￥</td>
=======
     								<td width="150px">报表编制日期：</td>
     								<td width="150px"><input type="month" name="bstatement.BstatementMonth"/></td>
     							    <td width="150px" colspan=3></td>
     								<td width="150px">	金额单位：￥</td>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    							</tr>
    							<tr>
    								<td width="150px">资产</td>
    								<td width="150px">年初余额</td>
<<<<<<< HEAD
    								<td width="150px">期末余额</td>
    								<td width="150px">负债和所有者权益</td>
    								<td width="150px">年初余额</td>
    								<td width="150px">期末余额</td>
=======
    								<td width="150px">月末余额</td>
    								<td width="150px">负债和所有者权益</td>
    								<td width="150px">年初余额</td>
    								<td width="150px">月末余额</td>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    							</tr>
    							<tr>
    								<td width="150px" style="text-align:left">流动资产:</td>
    								<td width="150px"></td>
    								<td width="150px"></td>
    								<td width="150px" style="text-align:left">流动负债:</td>
    								<td width="150px"></td>
    								<td width="150px"></td>
    							</tr>
    							<tr>
     								<td width="150px">货币资金</td>
     								<td width="150px"><input type="text" name="ybstatement.Bcurrent1"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bcurrent1"/></td>
     								<td width="150px">短期负债</td>
     								<td width="150px"><input type="text" name="ybstatement.Bliabilities1"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bliabilities1"/></td>
    							</tr>
    							<tr>
     								<td width="150px">应收帐款</td>
     								<td width="150px"><input type="text" name="ybstatement.Bcurrent2"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bcurrent2"/></td>
     								<td width="150px">应付帐款</td>
     								<td width="150px"><input type="text" name="ybstatement.Bliabilities2"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bliabilities2"/></td>
    							</tr>
    							<tr>
     								<td width="150px">存货</td>
     								<td width="150px"><input type="text" name="ybstatement.Bcurrent3"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bcurrent3"/></td>
     								<td width="150px">应交税金</td>
     								<td width="150px"><input type="text" name="ybstatement.Bliabilities3"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bliabilities3"/></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">流动资产合计：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
     								<td width="150px" style="text-align:left">流动负债合计：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">固定资产：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
     								<td width="150px" style="text-align:left">所有者权益：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
    							</tr>
    							<tr>
     								<td width="150px">固定资产原产值</td>
     								<td width="150px"><input type="text" name="ybstatement.Bfixed1"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bfixed1"/></td>
     								<td width="150px">实收资本</td>
     								<td width="150px"><input type="text" name="ybstatement.Bsurplus1"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bsurplus1"/></td>
    							</tr>
    							<tr>
     								<td width="150px">累计折旧</td>
     								<td width="150px"><input type="text" name="ybstatement.Bfixed2"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bfixed2"/></td>
     								<td width="150px">盈余公积</td>
     								<td width="150px"><input type="text" name="ybstatement.Bsurplus2"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bsurplus2"/></td>
    							</tr>
    							<tr>
     								<td width="150px">固定资产净产值</td>
     								<td width="150px"><input type="text" name="ybstatement.Bfixed3"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bfixed3"/></td>
     								<td width="150px">未分配利润</td>
     								<td width="150px"><input type="text" name="ybstatement.Bsurplus3"/></td>
     								<td width="150px"><input type="text" name="bstatement.Bsurplus3"/></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">固定资产合计：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
     								<td width="150px" style="text-align:left">所有者权益合计：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">资产合计：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
     								<td width="150px" style="text-align:left">负债及所有者权益：</td>
     								<td width="150px"></td>
     								<td width="150px"></td>
    							</tr>
    							<tr>
     								<td width="150px">编制人:</td>
<<<<<<< HEAD
     								<td width="150px" colspan="5" style="text-align:left;"><input type="text" name="bstatement.BstatementUnumber" style="width:750px;"/></td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" style="width:100px;height:30px;margin-top:5px;">
   						</form>
					</div>
				</div>
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:17%; float:left;">
=======
     								<td width="150px"><input type="text" name="bstatement.BstatementUnumber"/></td>
     								<td width="150px" colspan="5"></td>
    							</tr>
   							</table>
   							<input type="submit" value="提交" id="iw"/>
   						</form>	
				    </div>
				</div>
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
				</div>
				<div title="现金流量表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
<<<<<<< HEAD
						<div class="search" style="width:18%; float:left;">
=======
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
				</div>
			</div>
		</div>
  </body>
</html>


