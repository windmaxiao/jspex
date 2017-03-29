<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
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
    <h1>用户注册</h1>
    <hr>
    <form name="regForm" action="response.jsp" method="post">
		<table border="1">
			<tr>
				<th colspan="2">登&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp录</th>
			</tr>
			<tr>
				<td align="center">用户名</td>
				<td><input type="text" name="username" size="30" /></td>
			</tr>
			<tr>
				<td align="center">密&nbsp&nbsp&nbsp&nbsp码</td>
				<td><input type="password" name="password" size="30" /></td>
			</tr>
			<tr>
				<td align="center">性&nbsp&nbsp&nbsp&nbsp别</td>
				<td align="center">女<input type="radio" name="sex" value="0" />
				    &nbsp&nbsp&nbsp&nbsp男<input type="radio" name="sex" value="1" /></td>
			</tr>
			<tr>
				<td align="center">爱&nbsp&nbsp&nbsp&nbsp好</td>
				<td>抽烟<input type="checkbox" name="habit" value="smoke" />
				          喝酒<input type="checkbox" name="habit" value="drink" />
				          烫头<input type="checkbox" name="habit" value="perm" /></td>
			</tr>
			<tr>
				<td align="center">学&nbsp&nbsp&nbsp&nbsp历</td>
				<td>
					<select name="edu">
						<option>请选择</option>
						<option value="0">-----小学-----</option>
						<option value="1">-----初中-----</option>
						<option value="2">-----高中-----</option>
						<option value="3">-----本科-----</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center">上传照片</td>
				<td><input type="file" name="photo" /></td>
			</tr>
			<tr>
				<td align="center">个人描述</td>
				<td><textarea name="disc" cols="31" rows="5">请输入...</textarea></td>
			</tr>
			<tr>
				<td align="center">隐藏域</td>
				<td><input type="hidden" name="secret" value="123" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交" />
					&nbsp&nbsp&nbsp&nbsp<input type="reset" />
				</td>
			</tr>
		</table>
		
		<a href="request.jsp?username=哦哦哦">测试URL传参</a>
	</form>
  </body>
</html>
