<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- easyui -->
	<link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="source/jquery-easyui-1.5/demo/demo.css">
    <script type="text/javascript" src="source/jquery-easyui-1.5/jquery.min.js"></script>
    <script type="text/javascript" src="source/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	
	<style type="text/css">
		.l_form{
			margin-left: 50%;
			margin-top:6%;
		}
		.l_form .easyui-panel .t_button input{
			background-color: white;
			border: 1px solid #95B8E7;
			padding: 0px;
			width:31%;
			height: 30px;
        	border-radius: 5px;
        	color: #95B8E7;
		}
		.l_form .easyui-panel .t_button input:hover{
			background-color: #95B8E7;
			color: white;
		}
	</style>
  </head>
  
  <body>
     <div class="l_form">
     <h2>登陆</h2><br/>
     <form action="userLogin">
        <div style="margin:20px 0;"></div>
    	<div class="easyui-panel" style="width:400px;padding:50px 60px;">
    		<span>用户名：</span>
        	<div style="margin-bottom:20px" class="input_panel">
            	<span><input name="user.userName" class="easyui-textbox" prompt="Username" iconWidth="28" style="width:120%;height:34px;padding:10px;"></span><br/>
        	</div>
        	<span>密码：</span>
        	<div style="margin-bottom:20px"	class="input_panel">
            	<span><input name="user.userPass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:120%;height:34px;padding:10px"></span><br/>
        	</div>
        	<div class="t_button" style="margin: 0px auto">
        		<input type="submit" value="登陆" >
        		<input type="button" id="Button" value="注册" onclick="location.href='register.jsp'">
        		<input type="button" id="Button" value="退出" onclick="location.href='index.jsp'">
        	</div>
    	</div>
     </form>
     </div>
  </body>
</html>
