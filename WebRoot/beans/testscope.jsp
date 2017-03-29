<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.po.Users" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>javabean的作用域范围</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>javabean的作用域范围</h1>
    <hr>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="request"/>
    jsp:getProperty<br>
    用户名：<jsp:getProperty property="username" name="myUsers"/><br>
    密码： <jsp:getProperty property="password" name="myUsers"/><br>
    <hr>
    application.getAttribute<br>
    用户名：<%=((Users)application.getAttribute("myUsers")).getUsername() %><br>
    密码：<%=((Users)application.getAttribute("myUsers")).getPassword() %><br>
    <hr>
    <hr>
    
    session<br>
    用户名：<%=((Users)session.getAttribute("myUsers")).getUsername() %><br>
    密码：<%=((Users)session.getAttribute("myUsers")).getPassword() %><br>
    <hr>
    
    request<br>
    用户名：<%=((Users)request.getAttribute("myUsers")).getUsername() %><br>
    密码：<%=((Users)request.getAttribute("myUsers")).getPassword() %><br>
  </body>
</html>
