<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head profile="http://gmpg.org/xfn/11">
    <title>流水功能</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <link type="text/css" rel="stylesheet" href="header.css"/> 
        <script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/Highcharts-5.0.6/code/highcharts.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btnAjax").click(function() {
	var userMonth = $("#userMonth").val().trim();
	$.ajax({
	type : "POST",
	url : "ajaxAction",
	data:{userMonth:userMonth,},
	dataType : "text",
	success : function(data) {
		data = $.parseJSON(data);
		var userMonth = data.userMonth;
		var keys = [];// keys
		var vals = [];// values
		$.each(data.seasonMap1, function(key, value){
    		keys.push(key);
    		vals.push(parseInt(value));// 注意把json数据转换为int格式（或float等数据型，不能为String型）
    		console.log(key, value);// 控制台输出
		});
		var keys1 = [];
		var vals1 = [];
		$.each(data.seasonMap2, function(key, value){
    		keys1.push(key);
    		vals1.push(parseInt(value));
    		console.log(key, value);
		});
		var keys2 = [];
		var vals2 = [];
		$.each(data.seasonMap3, function(key, value){
    		keys2.push(key);
    		vals2.push(parseInt(value));
    		console.log(key, value);
		});
		var drawChart = function() {
		$('#container').highcharts(
		{
       		credits: { 
       	   		enabled: false //不要highchartslogo
       		}, 
       		title: {
           		text: userMonth+'收入与支出图',
           		x: -20 //center
       		},
       		subtitle: {
           		text: 'Source: 记账功能',
           		x: -20
       		},
       		xAxis: {
           		categories: keys
       		},
       		yAxis: {
           		title: {
               		text: '+:收入/-支出(元)'
           		},
           		plotLines: [{
               	value: 0,
               	width: 1,
               	color: '#808080'
           		}]
       		},
       		tooltip: {
           		valueSuffix: ''
       		},
       		legend: {
           		layout: 'vertical',
           		align: 'right',
           		verticalAlign: 'middle',
           		borderWidth: 0
       		},
       		series: [{
           		name: '收入',
           		data: vals
       			},{
       			name:'支出',
       			data: vals1
       			},{
       			name:'净收入',
       			data:vals2
       		}]
		});
	};
	drawChart();
	}
	});
	});
});
</script>
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
#info_panel #head{
    margin-left:3%;
	margin-top:2%;
}
#info_panel #head1{
	display: inline-block;
	margin-left:3%;
	margin-top:1%;
}
#info_panel #head1 input{
	border: 1px solid #95B8E7;
	height: 30px;
	border-radius: 5px;
	font-size:18px;
}
#info_panel #head2{
	display: inline-block;
	margin-left:3%;
	margin-top:1%;
}
#info_panel #head2 input{
	background-color: white;
	border: 1px solid #95B8E7;
	height: 30px;
	width:80px;
    border-radius: 5px;
    color: #000000;
    font-size:20px;
}
#info_panel #head3{
	margin-top:1%;
}
#info_panel #head2 input:hover{
	background-color: #95B8E7;
	color: white;
}
#info_panel #container{
	padding-top:2%;
	min-width: 90%; 
	height: 60%; 
	margin-left:3%;
	margin-right:3%;
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
       <div id="head"><h2 style="color:#000000">请输入月份用于查询收支图</h2></div>
       <div id="head1"><input type="month" id="userMonth"/></div>
       <div id="head2"><input type="button" id="btnAjax" value="查询" /></div>
       <div id="head3"><hr style="height:3px;border:none;border-top:3px double #95B8E7;" /></div>
       <div id="container"></div>
    </div>
  </body>
</html>