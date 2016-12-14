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
			border:0px;
			height:48px;
			font-size:15px;
			paddind-left:2px;
			width:300px;
		}
	</style>
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
  	    <div class="panel" style="width:95%;height:92%;margin-left:2.5%">
			<div class="easyui-tabs" style="width:100%;height:100%;">
				<div title="利润表" style="padding-top:1%;width:100%;" class="tabs">
					<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
						<div class="search" style="display:inline-block;">
							<form action="statementQueryp" class="search">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="month" name="fsdate" class="date"/>
    							<input type="submit" value="查询利润表" class="Button">
    						</form>
    					</div>
    					<div class="add" style="display:inline-block;">
    						<form action="fstatementJmpPs" class="add">
    							<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    							<input type="submit" value="新增利润表" class="Button">
    						</form>
    					</div>
    				</div>
    				<div class="table_panel">
   							<s:hidden name="userId" value="%{ruser.userId}"/></span>
   							<table onmousewheel="return bigimg(this)" cellpadding=0 cellspacing=0 style='border-collapse:collapse;table-layout:fixed;' class="s1">
   								<tr>
   									<td width="300px" colspan="3">利润表</td>
   								</tr>
    							<tr>
     								<td width="300px">时间：</td>
     								<td><s:property value="pstatement.PstatementDate"></s:property></td>
     							    <td>金额单位：￥</td>
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
     								<td width="300px"><s:property value="pstatement.Pincome1"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">投资效益</td>
     								<td width="300px"><s:property value="pstatement.Pincome2"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业收益</td>
     								<td width="300px"><s:property value="pstatement.Pincome3"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pincome3"></s:property></td>
    							</tr>
    							<tr>
    								<td width="300px" >收入总计：</td>
    								<td width="300px"><s:property value="pstatement.APincome"></s:property></td>
    								<td width="300px"><s:property value="ypstatement.APincome"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px" colspan="3">费用</td>
    							</tr>
    							<tr>
     								<td width="300px">主营业成本</td>
     								<td width="300px"><s:property value="pstatement.Pcost1"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost1"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">营业税及附加</td>
     								<td width="300px"><s:property value="pstatement.Pcost2"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost2"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">销售费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost3"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost3"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其他营业成本</td>
     								<td width="300px"><s:property value="pstatement.Pcost4"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost4"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">管理费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost5"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost5"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">财务费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost6"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost6"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">其它费用</td>
     								<td width="300px"><s:property value="pstatement.Pcost7"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Pcost7"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">费用总计</td>
     								<td width="300px"><s:property value="pstatement.APcost"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.APcost"></s:property></td>
    							</tr>
    							<tr>
     								<td width="300px">净利润</td>
     								<td width="300px"><s:property value="pstatement.Aincome"></s:property></td>
     								<td width="300px"><s:property value="ypstatement.Aincome"></s:property></td>
    							</tr>
    							<tr>
     								<td width="150px">编制人:</td>
     								<td width="150px"><a href="pstatementUdetail.action?pstatement.PstatementDate=<s:property value="pstatement.PstatementDate"/>
     									&userId=<s:property value="ruser.userId"/>">
     									<s:property value="pstatement.PstatementUnumber"></s:property></a></td>
     								<td></td>
    							</tr>
   							</table>
   						<a href="pstatementUpJPs.action?fsdate=<s:property value="pstatement.PstatementDate"/>
     						&userId=<s:property value="ruser.userId"/>"><input type="button" value="编辑" id="ib1"></a>
   						<a href="pstatementDelete.action?fsdate=<s:property value="pstatement.PstatementDate"/>
   							&PstatementId=<s:property value="pstatement.PstatementId"/>
   							&userId=<s:property value="ruser.userId"/>"><input type="button" value="删除" id="ib2"></a>
					   	<a href="statementPrintp.action?fsdate=<s:property value="pstatement.PstatementDate"/>
   							&userId=<s:property value="ruser.userId"/>"><input type="button" value="预览" id="ib3"></a>
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
    						</form>
    					</div>
    				</div>
				</div>
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
    						</form>
    					</div>
    				</div>
				</div>
			</div>
		</div>
  </body>
</html>
