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
<<<<<<< HEAD
    
    <title>个人信息</title>
=======
    <title>个人中心</title>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
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
<<<<<<< HEAD
    		width:30%;
    		height:4%;
    	}
=======
    		width:33%;
    		height:4%;
    	}
    	#info_panel #right_panel #content #s_con input{
    	    background-color:#F0F0F0;
    	    border:0px;
    		font-size:19px;
    	}
    	#info_panel #right_panel #content #lin{
    		padding-left: 8%;
    		padding-top: 2%;
    		border:0px;
    		width:33%;
    		height:8%;
    	}
    	#info_panel #right_panel #content #lin input{
			background-color: white;
			border: 2px solid #f0f0f0;
			padding: 0px;
			height: 30px;
        	border-radius: 5px;
        	color: #000000;
        	font-size:24px;
    	}
    	#info_panel #right_panel #content #lin input:hover{
    	    background-color: #f0f0f0;
			color: #000fff;
		}
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
	</style>
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
<<<<<<< HEAD
      		<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      		<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      	</div>
      </div>
  </div>
=======
      		<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>" style="text-decoration:none;">[返回首页]</a>
      		<a href="login.jsp" style="text-decoration:none;">[退出登录]</a>
      	</div>
      </div>
  </div>
  <s:if test="%{ruser.userNumber!=null}">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
  <div id="info_panel">
  	<nav class="menu" data-pjax id="choice_card">
  		<div id="head">
			<input value="个人设置" disabled="disabled">
		</div>
		<div id="choice">
<<<<<<< HEAD
			<div id="info">
  				<input value="个人信息" disabled="disabled"><br/>
  			</div>
  			<div id="other">
  			<input type="button" id="Button" value="修改信息" 
  				onclick="location.href='userEditI.action?userId=<s:property value="ruser.userId"/>'"><br/>
=======
			<div id="other">
  				<input type="button" id="Button" value="个人信息" 
  				onclick="location.href='userPlay.action?userId=<s:property value="ruser.userId"/>'"><br/>
  			</div>
  			<div id="info">
  			    <input value="修改信息" disabled="disabled"><br/>
  		    </div>
  		    <div id="other">
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
  			<input type="button" id="Button" value="修改密码" 
  				onclick="location.href='userEditP.action?userId=<s:property value="ruser.userId"/>'"><br/>
  			</div>
  		</div>
  	</nav>
  	<div id="right_panel">
  		<div id="head">
<<<<<<< HEAD
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
=======
			<h3>修改个人信息</h3><br>
		</div>
		<div id="content">
		<form action="userChangeI">
		<s:hidden name="ruser.userId" value="%{ruser.userId}"/>
		<div id="label"><input value="用户ID(*不可修改)" readonly="true"></div>
    	<div id="s_con"><s:property value="%{ruser.userNumber}"/></div>
    	<div id="label"><input value="真实姓名(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userTruename" value="%{ruser.userTruename}"/></div>
    	<div id="label"><input value="所在部门(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userDepartment" value="%{ruser.userDepartment}"/></div>
    	<div id="label"><input value="现任职务(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userPost" value="%{ruser.userPost}"/></div>
    	<div id="label"><input value="办公电话(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userPhone" value="%{ruser.userPhone}"/></div>
    	<div id="label"><input value="手机号码(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userIphone" value="%{ruser.userIphone}"/></div>
    	<div id="label"><input value="电子邮箱(可以修改)" readonly="true"></div>
    	<div id="s_con"><s:textfield name="ruser.userEmail" value="%{ruser.userEmail}"/></div>
    	<div id="lin"><input type="submit" value="确认修改"/></div>
    	</form>
        </div>
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
    	<!-- 
    	<a href="rebackhome.action?userId=<s:property value="ruser.userId"/>">返回</a>
    	 -->
    </div>
  </div>
<<<<<<< HEAD
  
    
  </body>
=======
  </s:if>
  <s:else>
    <div id="info_panel">
  	<nav class="menu" data-pjax id="choice_card">
  		<div id="head">
			<input value="个人设置" disabled="disabled">
		</div>
		<div id="choice">
			<div id="other">
  				<input type="button" id="Button" value="个人信息" 
  				onclick="location.href='userPlay.action?userId=<s:property value="ruser.userId"/>'"><br/>
  			    <input type="button" id="Button" value="修改信息" 
  				onclick="location.href='userEditI.action?userId=<s:property value="ruser.userId"/>'"><br/>
  		    </div>
  		    <div id="info">
  		    	<input value="修改密码" disabled="disabled"><br/>
  			</div>
  		</div>
  	</nav>
  	<div id="right_panel">
  		<div id="head">
			<h3>修改密码</h3><br>
		</div>
		<div id="content">
		<form action="userChangeP">
		<s:hidden name="ruser.userId" value="%{ruser.userId}"/>
    	<div id="label"><input value="密码" readonly="true"></div>
    	<div id="s_con">
    	<input type="text" name="ruser.userPass" value="<s:property value='%{ruser.userPass}'/>"/>
    	<!--<s:textfield name="ruser.userPass" value="%{ruser.userPass}"/>-->
    	</div>
    	<div id="lin"><input type="submit" value="确认修改"/></div>
    	</form>
        </div>
    </div>
    </div>
  </s:else>
  </body>
  
>>>>>>> b84f6f3330687d26a2c96acad97c13282dfdfb97
</html>


