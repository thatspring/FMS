<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head profile="http://gmpg.org/xfn/11">
    <title>财务管理系统</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/Highcharts-5.0.6/code/highcharts.js"></script>
		<script src="js/Highcharts-5.0.6/code/themes/gray.js" type="text/javascript"></script> 
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
  </head>
  <body>
    <h3>你好！<s:property value="ruser.userName"/></h3>
     <div>
       <span>请输入月份用于查询收支图</span><br/>
       <input type="month" id="userMonth"/> 
       <input type="button" id="btnAjax" value="查询" />
     </div><br/>
     <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto">
     </div>
  </body>
</html>