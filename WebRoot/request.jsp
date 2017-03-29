<%@page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'request.jsp' starting page</title>
    
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
    <h1>request内置对象</h1>
    <%
    	request.setCharacterEncoding("utf-8");//解决中文乱码
    	request.setAttribute("WTF", "123456");
     %>
    用户名：<%=request.getParameter("username") %><br>
    密码：<%=request.getParameter("password") %><br>
    性别：<%=request.getParameter("sex") %><br>
    爱好：<%
    	if(request.getParameterValues("habit") != null)
    	{
   			String[] habit = request.getParameterValues("habit");
   			for(int i = 0;i  <habit.length; i++)
   			{
   				out.println(habit[i] + "&nbsp;&nbsp;");
   			}
   		}
      %><br>
      WTF:--<%=request.getAttribute("WTF") %><br>
      MIME:--<%=request.getContentType() %><br>
      协议类型:--<%=request.getProtocol() %><br>
      主机名:--<%=request.getServerName() %><br>
      端口号--:<%=request.getServerPort() %><br>
      编码方式--:<%=request.getCharacterEncoding() %><br>
      请求长度--:<%=request.getContentLength() %><br>
      IP--:<%=request.getRemoteAddr() %><br>
      请求真实路径--:<%=request.getRealPath("request.jsp") %><br>
      请求上下文路径--:<%=request.getContextPath() %><br>
  </body>
</html>
