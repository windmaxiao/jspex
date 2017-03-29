<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>

<%
	response.setContentType("text/html; charset=utf-8");
	
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();
	
	PrintWriter outer = response.getWriter();
	outer.println("response生成的输出流");
	
	//重定向，前一次请求对象不保存
	//response.sendRedirect("request.jsp");
	
	//转发，前一次请求对象保存
	request.getRequestDispatcher("request.jsp").forward(request, response);
%>

