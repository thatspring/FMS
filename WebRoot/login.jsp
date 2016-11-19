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

  </head>
  
  <body>
     <h2>登陆</h2><br/>
    
     <form action="userLogin">
        <div style="margin:20px 0;"></div>
    	<div class="easyui-panel" style="width:400px;padding:50px 60px">
        	<div style="margin-bottom:20px">
            	<span>用户名：</span><span><input name="user.userName" class="easyui-textbox" prompt="Username" iconWidth="28" style="width:100%;height:34px;padding:10px;"></span><br/>
        	</div>
        	<div style="margin-bottom:20px">
            	<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><span><input type="password" name="user.userPass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:100%;height:34px;padding:10px"></span><br/>
        	</div>
        	<div style="margin: 0px auto">
        		<input type="submit" value="登陆">
        	</div>
    	</div>
     </form>
     <a href="register.jsp">注册</a>         
     <a href="index.jsp">返回</a>
  </body>
</html>
