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
	
	<style type="text/css">
		.table_panel .table img{
			margin-top:3%;
			z-index:0;
		}
		
		.table_panel .table .other input{
			position: absolute;
			z-index:1;
			width:6.5%;
			height:3.5%;
		}
		.table_panel .table .date_div input{
			position: absolute;
			z-index:1;
			top:28.5%;
			left:26%;
		}
		.submit{
			width:100%;
			height:10%;
			padding-top:1%;
		}
		.submit input{
			width:8%;
			height:50%;
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
      		<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      	</div>
      </div>
  	</div>
	<div class="panel" style="width:95%;height:93.5%;margin-left:2.5%">
	<div class="easyui-tabs" style="width:100%;height:100%;">
		<div title="资产负债表" style="padding-top:1%;width:100%;" class="tabs">
			<div style="border-bottom:2px solid #66CCFF;width:100%;height:4%">
				<div class="search" style="width:18%; float:left;">
					<form action="statementQueryb" >
						<div style="width:10%;height:0px;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    					<input type="month" name="fsdate" class="date"/>
    					<input type="submit" value="查询资产负载表" class="Button" />
    				</form>
    			</div>
    			<div class="add" style="width:82%; float:right;">
    				<form action="fstatementJmpBs">
    					<div style="width:10%;height:0;"><s:hidden name="userId" value="%{ruser.userId}"/></div>
    					<input type="submit" value="新增资产负债表" class="Button"/>
    				</form>
    			</div>
    		</div>
    		<div class="table_panel" >
		<form action="bstatementAdd">
   			<div class="table">
   				<img src="picture/fbstatement.png" alt="">
   				<s:hidden name="userId" value="%{ruser.userId}"/></span>
   				<div class="date_div">
   				<input type="month" name="bstatement.BstatementMonth" class="date"/>
   				</div>
   				<div class="other">
   				<input type="text" name="ybstatement.Bcurrent1" class="hbzj1" style="top:42.6%;left:33.2%;"/>
   				<input type="text" name="bstatement.Bcurrent1" class="hbzj2" style="top:42.6%;left:41%;"/>
   				<input type="text" name="ybstatement.Bcurrent2" class="zk1" style="top:46.4%;left:33.2%;"/>
   				<input type="text" name="bstatement.Bcurrent2" class="zk2" style="top:46.4%;left:41%;"/>
   				<input type="text" name="ybstatement.Bcurrent3" class="ch1" style="top:50%;left:33.2%;"/>
   				<input type="text" name="bstatement.Bcurrent3" class="ch2" style="top:50%;left:41%;"/>
   				<input type="text" name="ybstatement.Bfixed1" class="cz1" style="top:61%;left:33.2%;"/>
   				<input type="text" name="bstatement.Bfixed1" class="cz2" style="top:61%;left:41%;"/>
   				<input type="text" name="ybstatement.Bfixed2" class="zj1" style="top:64.6%;left:33.2%;"/>
   				<input type="text" name="bstatement.Bfixed2" class="zj2" style="top:64.6%;left:41%;"/>
   				<input type="text" name="ybstatement.Bfixed3" class="zc1" style="top:68.2%;left:41%;"/>
   				<input type="text" name="bstatement.Bfixed3" class="zc2" style="top:68.2%;left:33.2%;"/>
   				<input type="text" name="ybstatement.Bliabilities1" class="fj1" style="top:42.6%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bliabilities1" class="fz2" style="top:42.6%;left:71.5%;"/>
   				<input type="text" name="ybstatement.Bliabilities2" class="yfzk1" style="top:46.4%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bliabilities2" class="yfzk2" style="top:46.4%;left:71.5%;"/>
   				<input type="text" name="ybstatement.Bliabilities3" class="yjsj1" style="top:50%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bliabilities3" class="yjsj2" style="top:50%;left:71.5%;"/>
   				<input type="text" name="ybstatement.Bsurplus1" class="sszb1" style="top:61%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bsurplus1" class="sszb2" style="top:61%;left:71.5%;"/>
   				<input type="text" name="ybstatement.Bsurplus2" class="yygj1" style="top:64.6%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bsurplus2" class="yygj2" style="top:64.6%;left:71.5%;"/>
   				<input type="text" name="ybstatement.Bsurplus3" class="wfplr1" style="top:68.2%;left:64.5%;"/>
   				<input type="text" name="bstatement.Bsurplus3" class="wfplr2" style="top:68.2%;left:71.5%;"/>
   				</div>
   				<input type="text" name="bstatement.BstatementUnumber" class="bzr" style="top:82%;left:27%;height:3.5%;width:10%;position: absolute;z-index:1;"/>
   			</div>
   			<div class="submit">
   				<input type="submit" value="提交">
   			</div>
   		</form>
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

