<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>瞎鸡巴测试</title>
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
    <h1>This is my JSP page.哈哈哈 </h1>
    <hr>
    
    <%!
    	String a = "qwerty";
    	int add(int x, int y)
    	{
    		return x + y;
    	}
     %>
    
    <% out.println("oooooo噢噢噢噢哦"); %><br>
    <%=a %><br>
     10+5=<%=add(5,6) %><br>
     
     用户名：<%=pageContext.getSession().getAttribute("username") %><br>
     <%
     	//pageContext.forward("reg.jsp");
     	pageContext.include("include.jsp");
      %>
  </body>
</html>
