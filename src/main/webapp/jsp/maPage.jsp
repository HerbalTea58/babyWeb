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
<title>管理员首页</title>
	<link rel="stylesheet" href="<%=basePath%>/css/maPage.css" type="text/css" />
</head>
<body>
	<div class="top">
		<img alt="logo" class="img1" src="<%=basePath %>/image/logo.png2.png">
	</div>
	<div class="left">
		<div class="item" style="margin-top:10px;" onclick="window.location='<%=basePath %>/jsp/maPage.jsp'">首页</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/essay.do'">文章管理</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/comment.do'">评论管理</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/advise.do'">咨询管理</div>
	</div>
	<div class="main">
		<span class="text1">欢 迎 回 来!</span>
	</div>
	
</body>
</html>