<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/Highcharts-5.0.6/code/highcharts.js"></script>
<script src="js/Highcharts-5.0.6/code/themes/gray.js" type="text/javascript"></script> 
<script type="text/javascript">
$(document).ready(
function() {
$("#btnAjax").click(function() {
var userMonth = $("#userMonth").val().trim();
$.ajax({
type : "POST",
url : "ajaxAction",
data:{userMonth:userMonth,},
dataType : "text",
success : function(data) {
data = $.parseJSON(data);
var country = data.countryName;
// keys
var keys = [];
// values
var vals = [];
$.each(data.seasonMap, function(key, value){
    keys.push(key);
    // 注意把json数据转换为int格式（或float等数据型，不能为String型）
    vals.push(parseInt(value));
    // 控制台输出
    console.log(key, value);
});
var drawChart = function() {
$('#container').highcharts(
{
       title: {
           text: 'Monthly Average Values',
           x: -20 //center
       },
       subtitle: {
           text: 'Source: ' + country,
           x: -20
       },
       xAxis: {
           categories: keys
       },
       yAxis: {
           title: {
               text: 'Values'
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
           name: 'Series 1',
           data: vals
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

<input type="month" id="userMonth"> 
<input type="button" id="btnAjax" value="Ajax调用" />
<div id="container"
style="min-width: 310px; height: 400px; margin: 0 auto"></div>

</body>
</html>