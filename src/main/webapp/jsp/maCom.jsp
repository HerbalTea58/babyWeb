<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论管理</title>
	<link rel="stylesheet" href="<%=basePath%>/css/maCom.css" type="text/css" />
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
	
	<table style="border-collapse:collapse;position:absolute;left:200px;top:150px;height:auto;width:1050px">
		<tr>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">被投诉人</th>
			<th style="height:40px;width:550px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉内容</th>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉人</th>
			<th style="height:40px;width:300px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉原因</th>
			<th style="height:40px;width:450px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉时间</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;line-height:40px;text-align:center;">操作</th>
		</tr>
		<c:forEach items="${coms }" var="com">
			<tr>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;">${com.rcname }</td>
				<td style="height:40px;width:auto;text-align:center;padding-left:10px;padding-right:10px;padding-top:10px;padding-buttom:10px;">${com.context }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${com.rname }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">${com.reason }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">
					<fmt:formatDate value='${com.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
				</td>
				<td style="height:40px;width:130px;line-height:40px;text-align:center;"><a href="#">忽略</a> | <a href="#">删除</a></td>
			</tr>
		</c:forEach> 
	</table>
	
</body>
</html>