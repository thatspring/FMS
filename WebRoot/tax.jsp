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
});
</script>
  </head>
  <body>
    <h3>你好！<s:property value="ruser.userName"/></h3>
     <div>
      <p>如果选择其它税种计算税率，请在计算公式一栏输入“金额*{税率}”!(例如：金额*15%)</p>
      <table>
       <tr>
        <th>税种</th><th>计算公式</th><th>金额</th><th>应交金额</th><th>操作</th>
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
        <td><input type="text" id="moneyTax"></td>
        <td><div id="rtaxMoneyText"></td>
        <td><input type="button" id="btnAjax" value="查询" /></td>
       </tr>
       <tr>
        <td>其他税种</td> 
        <td><input type="text" id="tax_cf"></td>
        <td><input type="text" id="moneyTax1"></td>
        <td><div id="rtaxMoneyText1"></td>
        <td><input type="button" id="stnAjax" value="查询" /></td>
       </tr>
      </table>
     </div>
     <a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
  </body>
</html>
