<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>dologin</title>
    
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
    <jsp:useBean id="myUsers" class="com.po.Users" scope="request"/>
    <h1>setProperty动作元素</h1>
    <hr>
    
    <!--根据表单自动匹配所有属性 -->
    <jsp:setProperty name="myUsers" property="*"/> 
    
    <%-- 
    <！--根据表单匹配指定属性 -->
    <jsp:setProperty name="myUsers" property="username"/>
    --%>
    <%-- 
    <!-- 与表单无关，手工赋值 -->
    <jsp:setProperty name="myUsers" property="username" value="qqq"/>
    <jsp:setProperty name="myUsers" property="password" value="789"/>
    --%>
    <%-- 
    <!--根据URL穿参赋值 -->
    <jsp:setProperty name="myUsers" property="username" />
    <jsp:setProperty name="myUsers" property="password" param="qwe"/>
    --%>
  <%-- 
  <!--传统方式获取数据 -->   
    用户名：<%=myUsers.getUsername() %><br>
    密码：<%=myUsers.getPassword() %><br>
  --%>
      <!--使用getproperty获取 -->
    用户名：<jsp:getProperty property="username" name="myUsers"/><br>
    密码： <jsp:getProperty property="password" name="myUsers"/><br>
  <hr>
  <a href="beans/testscope.jsp">javabean四个作用域</a>
  <%
  	request.getRequestDispatcher("testscope.jsp").forward(request, response);
   %>
  </body>
</html>
