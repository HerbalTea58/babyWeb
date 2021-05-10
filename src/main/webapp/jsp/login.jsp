<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/login.css" />
</head>

<body id="body">
	<form id="login" action="<%=path %>/login/start.do" method="post">
		<span class="char1">账号:</span><input class="text1" type="text" value="请输入账户号/手机号/昵称" onfocus="if (value =='请输入账户号/手机号/昵称'){value =''}" onblur="if (value==''){value='请输入账户号/手机号/昵称'}" name="uid" />
		<span class="char2">密码:</span><input class="text2" type="password" name="password" />
		<span class="char3"><a href="#">忘记密码？</a></span>
		<button class="but1">登录</button>
		<span class="char4">注册</span>
	</form>
</body>
</html>