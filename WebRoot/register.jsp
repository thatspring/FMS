<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
        #info_head{
			width:60%;
			margin:0px auto;
			margin-top:4%;
			height:5%;
        }
        #info_z{
			width:60%;
			margin:0px auto;
			margin-top:0.5%;
			height:2%;
        }
        #info_panel{
            margin-top:4%;
            background-color:#FFFFFF;
			width:60%;
			margin:0px auto;
			height:83%;
		}
		#info_panel #label{
    		border:0px;
    		width:20%;
    		height:2%;
    		padding-top:2%;
    		padding-left:8%;
    	}
    	#info_panel #label input{
    		font-size:22px;
    		border:0px;
    	}
        #info_panel #labeli{
    		border:0px;
    		width:20%;
    		height:2%;
    		padding-top:2%;
    		padding-left:8%;
    	}
    	#info_panel #label1 input{
    		font-size:24px;
    		border-width:2px;
    		border-color:#95B8E7;
    		border-radius: 5px;
    	}
    	#info_panel #labelb{
    		border:0px;
    		width:20%;
    		height:2%;
    		padding-top:3.5%;
    		padding-left:10%;
    	}
    	#info_panel #labelb input{
    		background-color: white;
    		border: 1px solid #95B8E7;
    		font-size:20px;
    		border-radius: 5px;
    	}
    	#info_panel #labelb input:hover{
    	    background-color: #95B8E7;
			color: white;
		}
    </style>
  </head>
  
  <body>
   <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;opacity: 1;">
		<img src="source/image/login_bg.jpg" height="100%" width="100%"/>
   </div>
   <div id="info_head"><h2 style="color:#000000">注册</h2></div>
   <div id="info_z"><hr style="height:3px;border:none;border-top:3px double #95B8E7;" /></div>
   <div id="info_panel">
     <form action="userRegister">      
     <div id="label"><input value="用户ID" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userNumber"/></div>
     <div id="label"><input value="真实姓名" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userTruename"/></div>
     <div id="label"><input value="所在部门" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userDepartment"/></div>
     <div id="label"><input value="现任职务" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userPost"/></div>
     <div id="label"><input value="办公电话" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userPhone"/></div>
     <div id="label"><input value="手机号码" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userIphone"/></div>
     <div id="label"><input value="电子邮箱" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userEmail"/></div>
     <div id="label"><input value="用户名" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userName"/></div>
     <div id="label"><input value="密码" readonly="true"></div>
     <div id="labeli"><input type="text" name="user.userPass"/></div>
     <div id="labelb">
       <input type="submit" value="注册">
       <input type="button" id="Button" value="退出" 
        onclick="location.href='login.jsp'">
     </div>
     </form>
   </div>
  </body>
</html>
