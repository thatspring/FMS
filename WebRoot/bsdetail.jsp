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
	<link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="source/demo.css">
	<script type="text/javascript" src="source/jquery-easyui-1.5/jquery.min.js"></script>
	<script type="text/javascript" src="source/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	<link type="text/css" rel="stylesheet" href="table_tabs.css"/>
	<style>
		td input{
			border:0px;
			height:48px;
			font-size:15px;
			paddind-left:2px;
		}
	</style>
  </head>
  <script language="javascript">
		function bigimg(i)
		{
			var zoom = parseInt(i.style.zoom,10)||100;
			zoom += event.wheelDelta / 12;
			if(zoom > 0 )
			i.style.zoom=zoom+'%';
			return false;
		}
  </script>
  
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
							<form action="statementQueryb" >
								<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询资产负载表" class="Button" >
    						</form>
    					</div>
    					<div class="add" style="width:82%; display:inline-block">
    						<form action="fstatementJmpBs">
    							<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增资产负债表" class="Button">
    						</form>
    					</div>
    				</div>
    				<div class="table_panel">
   							<s:hidden name="userId" value="%{ruser.userId}"/></span>
   							<table onmousewheel="return bigimg(this)" cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s1">
   								<tr>
   									<td width="150px" colspan="6">资产负债表</td>
   								</tr>
    							<tr>
     								<td width="150px" colspan="6" >报表编制日期：
     									<s:property value="bstatement.BstatementMonth"></s:property>
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     									金额单位：￥</td>
    							</tr>
    							<tr>
    								<td width="150px">资产</td>
    								<td width="150px">年初余额</td>
    								<td width="150px">期末余额</td>
    								<td width="150px">负债和所有者权益</td>
    								<td width="150px">年初余额</td>
    								<td width="150px">期末余额</td>
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
     								<td width="150px"><s:property value="ybstatement.Bcurrent1"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bcurrent1"></s:property></td>
     								<td width="150px">短期负债</td>
     								<td width="150px"><s:property value="ybstatement.Bliabilities1"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bliabilities1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">应收帐款</td>
     								<td width="150px"><s:property value="ybstatement.Bcurrent2"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bcurrent2"></s:property></td>
     								<td width="150px">应付帐款</td>
     								<td width="150px"><s:property value="ybstatement.Bliabilities2"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bliabilities2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">存货</td>
     								<td width="150px"><s:property value="ybstatement.Bcurrent3"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bcurrent3"></s:property></td>
     								<td width="150px">应交税金</td>
     								<td width="150px"><s:property value="ybstatement.Bliabilities3"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bliabilities3"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">流动资产合计：</td>
     								<td width="150px"><s:property value="ybstatement.BAcurrent"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAcurrent"></s:property></td>
     								<td width="150px" style="text-align:left">流动负债合计：</td>
     								<td width="150px"><s:property value="ybstatement.BAliabilities"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAliabilities"></s:property></td>
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
     								<td width="150px"><s:property value="ybstatement.Bfixed1"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bfixed1"></s:property></td>
     								<td width="150px">实收资本</td>
     								<td width="150px"><s:property value="ybstatement.Bsurplus1"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bsurplus1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">累计折旧</td>
     								<td width="150px"><s:property value="ybstatement.Bfixed2"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bfixed2"></s:property></td>
     								<td width="150px">盈余公积</td>
     								<td width="150px"><s:property value="ybstatement.Bsurplus2"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bsurplus2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">固定资产净产值</td>
     								<td width="150px"><s:property value="ybstatement.Bfixed3"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bfixed3"></s:property></td>
     								<td width="150px">未分配利润</td>
     								<td width="150px"><s:property value="ybstatement.Bsurplus3"></s:property></td>
     								<td width="150px"><s:property value="bstatement.Bsurplus3"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">固定资产合计：</td>
     								<td width="150px"><s:property value="ybstatement.BAfixed"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAfixed"></s:property></td>
     								<td width="150px" style="text-align:left">所有者权益合计：</td>
     								<td width="150px"><s:property value="ybstatement.BAsurplus"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAsurplus"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px" style="text-align:left">资产合计：</td>
     								<td width="150px"><s:property value="ybstatement.BAcf"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAcf"></s:property></td>
     								<td width="150px" style="text-align:left">负债及所有者权益：</td>
     								<td width="150px"><s:property value="ybstatement.BAls"></s:property></td>
     								<td width="150px"><s:property value="bstatement.BAls"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">编制人:</td>
     								<td width="150px" colspan="5" style="text-align:left;"><a href="bstatementUdetail.action?bstatement.BstatementMonth=<s:property value="bstatement.BstatementMonth"/>
     									&userId=<s:property value="ruser.userId"/>">
     									<s:property value="bstatement.BstatementUnumber"></s:property></a></td>
    							</tr>
   							</table>
   						<a href="bstatementUpJBs.action?fsdate=<s:property value="bstatement.BstatementMonth"/>
     					&userId=<s:property value="ruser.userId"/>">编辑</a>
   				<a href="bstatementDelete.action?fsdate=<s:property value="bstatement.bstatementMonth"/>
   					&BstatementId=<s:property value="bstatement.BstatementId"/>
   					&userId=<s:property value="ruser.userId"/>">删除</a>
   				<a href="userFstatements.action?userId=<s:property value="ruser.userId"/>">返回</a>
					</div>
				</div>
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="width:17%; float:left;">
							<form action="statementQueryp" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询利润表" class="Button">
    						</form>
    					</div>
    					<div class="add" style="width:83%; float:right;">
    						<form action="fstatementJmpPs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增利润表" class="Button">
    						</form>
    					</div>
    				</div>
				</div>
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
    						</form>
    					</div>
    				</div>
				</div>
			</div>
		</div>
  </body>
</html>
