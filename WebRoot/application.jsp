<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>application常用方法</title>
    
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
    <h1>application内置对象</h1>
    <hr>
    <% 
    	application.setAttribute("city", "北京");
    	application.setAttribute("postcode", "10000");
    	application.setAttribute("email", "666@7877.com");
     %>
     
     所在城市：<%=application.getAttribute("city") %><br>
     邮编：<%=application.getAttribute("postcode") %><br>
  email：<%=application.getAttribute("email") %><br>
  所有属性为：<%
  		Enumeration emnu = application.getAttributeNames();
  		while(emnu.hasMoreElements())
  		{
  			out.println(emnu.nextElement() + "<br>");
  		}
   %><br>
   jsp版本号：<%=application.getServerInfo() %><br>
   page页面字符串描述：<%=page.toString() %><br>
  </body>
</html>
