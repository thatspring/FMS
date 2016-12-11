<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    <!--  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	-->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<<<<<<< HEAD
	<link type="text/css" rel="stylesheet" href="header.css"/> 
	
	<style>
		#info_panel{
			width:95%;
			margin:0px auto;
			height:92%;
		}
		
		#info_panel #choice_card{ 
			border-radius: 3px;
			width:13%; 
			float:left;
			height:100%;
			background-color:#FFFFFF;
			border:1px solid #E0E0E0;
			
		}
		#info_panel #choice_card #head{
			height:5%;
			width:100%;
			background-color:#CCFFCC;
		}
		#info_panel #choice_card #head input{
			height:100%;
			width:100%;
			font-size:20px;
			font-weight:bold;
			text-align:left;
			background-color:#E0E0E0;
			border:0px solid #E0E0E0;
			padding-left:8px;
		}
    	#info_panel #choice_card #choice #other input{
    		width:100%;
    		text-decoration:none;
    		font-size:18px;
    		height:5%;
    		padding:5px;
    		background-color:white; 
    		cursor:pointer;
    		padding-bottom:0px;
    		border:1px solid #E6E6FA;
    	}
    	#info_panel #choice_card #choice #info input{
    		width:100%;
    		text-align:center;
    		border-left:3px solid #3300FF;
    		font-weight:bold;
    		text-decoration:none;
    		font-size:18px;
    		height:5%;
    		padding:5px;
    		background-color:white; 
    		padding-bottom:0px;
    		border-top:1px solid #E6E6FA;
    		border-bottom:1px solid #E6E6FA;
    		border-right:1px solid #E6E6FA;
    	}
    	#info_panel #choice_card #choice #other input:hover{
    		background:#E8E8E8;
    		border:1px solid #E8E8E8;
    	}
    	#info_panel #right_panel{
    		border-radius: 5px;
    		width:86.5%; 
			float:right;
			height:100%;
			background-color:white;
			border:1px solid #E0E0E0;
    	}
    	#info_panel #right_panel #head{
    		width:70%;
    		padding-top:2%;
    		font-size:30px;
    		border-bottom:2px solid #E6E6FA;
    		padding-left:5%;
    	}
    	#info_panel #right_panel #content{
    		width:70%;
    		padding-top:1%;
    		padding-left:8%;
    	}
    	#info_panel #right_panel #content #label{
    		border:0px;
    		width:20%;
    		height:4%;
    		padding-top:1.5%;
    	}
    	#info_panel #right_panel #content #label input{
    		font-size:22px;
    		border:0px;
    	}
    	#info_panel #right_panel #content #s_con{
    		border:2px solid #E6E6FA;
    		background-color:#F0F0F0;
    		border-radius: 5px;
    		font-size:22px;
    		width:30%;
    		height:4%;
    	}
	</style>
=======

  <s:if test="%{ruser.userNumber==null}">
    <title>My JSP 'change.jsp' starting page</title>
    <body>
     <h2>更改密码</h2>
     <form action="userChangeP">
     <s:hidden name="ruser.userId" value="%{ruser.userId}"/>
     <span>密码：<s:textfield name="ruser.userPass" value="%{ruser.userPass}"/></span><br>
     <input type="submit" value="修改"/>
     </form>
     <a href="userPlay.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </body>
  </s:if>
  <s:else>
    <title>My JSP 'change.jsp' starting page</title>
    <body>
     <h2>更改信息</h2>
     <form action="userChangeI">
     <s:hidden name="ruser.userId" value="%{ruser.userId}"/>
     <span>用户代码：<s:property value="%{ruser.userNumber}"/></span><br>
     <span>用户真实姓名：<s:textfield name="ruser.userTruename" value="%{ruser.userTruename}"/></span><br>
     <span>用户所在部门：<s:textfield name="ruser.userDepartment" value="%{ruser.userDepartment}"/></span><br>
     <span>用户现任职务：<s:textfield name="ruser.userPost" value="%{ruser.userPost}"/></span><br>
     <span>用户办公电话：<s:textfield name="ruser.userPhone" value="%{ruser.userPhone}"/></span><br>
     <span>用户手机号码：<s:textfield name="ruser.userIphone" value="%{ruser.userIphone}"/></span><br>
     <span>用户电子邮件：<s:textfield name="ruser.userEmail" value="%{ruser.userEmail}"/></span><br>
     <input type="submit" value="修改"/>
     </form>
     <a href="userPlay.action?userId=<s:property value="ruser.userId"/>">返回</a>
    </body>
  </s:else>
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
  </head>
  
  <body>
  <div id="bg" style="position:absolute;left:0;top:0;width:100%; height:100%; z-index:-1;">
		<img src="source/image/homepage_bg.jpg" height="100%" width="100%"/>
  </div>
  <!-- 导航栏 -->
  <div class="topbar">
  	  <div class="title">
  	  	<img alt="" src="source/image/homepage_title.png">
  	  </div>
      <div class="topbody">
      	<div class="info">
      		<a href="login.jsp">[退出登录]</a>
      		<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">[返回首页]</a>
      	</div>
      </div>
  </div>
  <div id="info_panel">
  	<nav class="menu" data-pjax id="choice_card">
  		<div id="head">
			<input value="个人设置" disabled="disabled">
		</div>
		<div id="choice">
			<div id="info">
  				<input value="个人信息" disabled="disabled"><br/>
  			</div>
  			<div id="other">
  			<input type="button" id="Button" value="修改信息" 
  				onclick="location.href='userEditI.action?userId=<s:property value="ruser.userId"/>'"><br/>
  			<input type="button" id="Button" value="修改密码" 
  				onclick="location.href='userEditP.action?userId=<s:property value="ruser.userId"/>'"><br/>
  			</div>
  		</div>
  	</nav>
  	<div id="right_panel">
  		<div id="head">
			<h3>个人详细信息</h3><br>
		</div>
		<div id="content">
		<div id="label"><input value="用户ID"></div>
    	<div id="s_con"><s:property value="ruser.userNumber"/></div>
    	<div id="label"><input value="真实姓名"></div>
    	<div id="s_con"><s:property value="ruser.userTruename"/></div>
    	<div id="label"><input value="所在部门"></div>
    	<div id="s_con"><s:property value="ruser.userDepartment"/></div>
    	<div id="label"><input value="现任职务"></div>
    	<div id="s_con"><s:property value="ruser.userPost"/></div>
    	<div id="label"><input value="办公电话"></div>
    	<div id="s_con"><s:property value="ruser.userPhone"/></div>
    	<div id="label"><input value="手机号码"></div>
    	<div id="s_con"><s:property value="ruser.userIphone"/></div>
    	<div id="label"><input value="电子邮箱"></div>
    	<div id="s_con"><s:property value="ruser.userEmail"/></div>
    	</div>
    	<!-- 
    	<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
    	 -->
    </div>
  </div>
  
    
  </body>
</html>


