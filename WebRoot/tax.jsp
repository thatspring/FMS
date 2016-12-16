<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head profile="http://gmpg.org/xfn/11">
    <title>税率计算</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/Highcharts-5.0.6/code/highcharts.js"></script>
		<script src="js/Highcharts-5.0.6/code/themes/gray.js" type="text/javascript"></script> 
<script type="text/javascript">
$(document).ready(function() {
	$("#btnAjax").click(function() {
		var taxClass = $("#taxClass").val().trim();
		var moneyTax = $("#moneyTax").val().trim();
		$.ajax({
			type : "POST",
			url : "taxAction0",
			data:{taxClass:taxClass,moneyTax:moneyTax},
			dataType : "text",
			success : function(data) {
				data = $.parseJSON(data);
				var rtax = data.rtax;
				var rtaxMoney = data.rtaxMoney;
				$("#rtaxText").html(rtax); 
				$("#rtaxMoneyText").html(rtaxMoney); 
			}
		});
	});
	$("#stnAjax").click(function() {
		var tax_cf = $("#tax_cf").val().trim();
		var moneyTax1 = $("#moneyTax1").val().trim();
		$.ajax({
			type : "POST",
			url : "taxAction1",
			data:{tax_cf:tax_cf,moneyTax1:moneyTax1},
			dataType : "text",
			success : function(data) {
				data = $.parseJSON(data);
				var rtaxMoney1 = data.rtaxMoney1;
				$("#rtaxMoneyText1").html(rtaxMoney1); 
			}
		});
	});
	$("#atnAjax").click(function() {
		var taxClass = $("#taxClass").val().trim();
		var moneyTax = $("#moneyTax").val().trim();
		var userdate = $("#userdate").val().trim();
		$.ajax({
			type : "POST",
			url : "taxAction2",
			data:{taxClass:taxClass,moneyTax:moneyTax,userdate:userdate},
			dataType : "text",
			success : function(data) {
				alert("添加成功，请到记账功能查询！")
			}
		});
	});
	$("#ctnAjax").click(function() {
		var tax_cf = $("#tax_cf").val().trim();
		var moneyTax1 = $("#moneyTax1").val().trim();
		var userdate1 = $("#userdate1").val().trim();
		$.ajax({
			type : "POST",
			url : "taxAction3",
			data:{tax_cf:tax_cf,moneyTax1:moneyTax1,userdate1:userdate1},
			dataType : "text",
			success : function(data) {
				alert("添加成功，请到记账功能查询！")
			}
		});
	});
});
</script>
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
    margin-top:3%;
	background-color:#FFFFFF;	
}
#info_panel #ibo #head{
	margin-left:3%;
	margin-top:2%;
}
#info_panel #ibo #head1{
	margin-top:1%;
}
#info_panel #ibo #b1{
	margin-left:2%;
	margin-top:2%;
}
#info_panel #ibo #b2{
	margin-left:5%;
	margin-top:8%;
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
	font-size:16px;
}
table.imagetable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
	font-size:20px;
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
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
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
      <div id="head"><h2 style="color:#000000">如果选择其它税种计算税率，请在计算公式一栏输入“金额*{税率}”!(例如：金额*15%)</h2></div>
      <div id="head1"><hr style="height:3px;border:none;border-top:3px double #95B8E7;" /></div>
      <div id="b1">
      <table class="imagetable">
       <tr>
        <th>税种</th>
        <th>计算公式</th>
        <th>金额</th>
        <th style="width:180px">应交金额</th>
        <th>操作</th>
        <th>日期</th>
        <th style="width:90px">添加</th>
       </tr>
       <tr>
        <td>
         <select id="taxClass" >
          <option select>=请选择税种=</option>
          <option value="1">1.增值税</option>
          <option value="2">2.所得税</option>
          <option value="3">3.营业税</option>
          <option value="4">4.消费税</option>
          <option value="5">5.城建税</option>
         </select>
        </td>
        <td><div id="rtaxText"></div> </td>
        <td><input type="text" id="moneyTax" class="ti"/></td>
        <td><div id="rtaxMoneyText"></td>
        <td><input type="button" id="btnAjax" value="查询" class="tb"/></td>
        <td><input type="date" id="userdate" class="td"/></td>
        <td><input type="button" id="atnAjax" value="添加到账目" class="tb" /></td>
       </tr>
       <tr>
        <td>其他税种</td> 
        <td><input type="text" id="tax_cf" class="ti"/></td>
        <td><input type="text" id="moneyTax1" class="ti"/></td>
        <td><div id="rtaxMoneyText1"></td>
        <td><input type="button" id="stnAjax" value="查询" class="tb"/></td>
        <td><input type="date" id="userdate1" class="td" /></td>
        <td><input type="button" id="ctnAjax" value="添加到账目" class="tb"/></td>
       </tr>
      </table>
     </div>
     <div id="b2">
      <h4>注：添加到账目时：</h4>
      <table class="gridtable">
       <tr>
        <th>项目</th><th>税种</th>
       </tr>
       <tr><td>增值税</td><td>Tax#01</td>
       <tr><td>所得税</td><td>Tax#02</td></tr>
       <tr><td>营业税</td><td>Tax#03</td></tr>
       <tr><td>消费税</td><td>Tax#04</td></tr>
       <tr><td>城建税</td><td>Tax#05</td></tr>
       <tr><td>其他税</td><td>Tax#06</td></tr>
      </table>
     </div>
     </div>
    </div>
  </body>
</html>
