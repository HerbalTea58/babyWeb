<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>管理员登录</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/manageLogin.css" />
</head>
<body>
<body id="body">
	<form id="login" action="<%=basePath %>/login/managelogin.do" method="post">
		<span class="char1">账号:</span><input class="text1" type="text" name="uid" />
		<span class="char2">密码:</span><input class="text2" type="password" name="password" />
		<button class="but1" type="submit">登录</button>
	</form>
</body>
</body>
</html>