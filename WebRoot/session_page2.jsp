<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>session_page2</title>
    
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
  <h1>session_page2</h1>
  <hr>
  <%
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss");	
    	Date d = new Date(session.getCreationTime());
   %>
     创建时间：<%=sdf.format(d) %><br>
    ID：<%=session.getId() %><br>
    获取信息：<%=session.getAttribute("username") %><br>
    获取属性有：<%
    	String[] names = session.getValueNames();
    	for(int i=0; i<names.length;i++)
    	{
    		out.println(names[i] + "&nbsp;&nbsp;&nbsp;");
    	}
    %>
  </body>
</html>
