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
<title>咨询管理</title>
	<link rel="stylesheet" href="<%=basePath%>/css/maAdvise.css" type="text/css" />
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
	<div class="main_top">
		<div id="i1" class="item1">问题管理</div>
		<div id="i2" class="item1">回答管理</div>
	</div>
	
	<table id="ques" style="border-collapse:collapse;position:absolute;left:200px;top:200px;height:auto;width:1050px">
		<tr>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">被投诉人</th>
			<th style="height:40px;width:300px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉标题</th>
			<th style="height:40px;width:550px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉内容</th>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉人</th>
			<th style="height:40px;width:300px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉原因</th>
			<th style="height:40px;width:450px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉时间</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;line-height:40px;text-align:center;">操作</th>
		</tr>
		<c:forEach items="${ques }" var="qu">
			<tr>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;">${qu.rcname }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">${qu.title }</td>
				<td style="height:40px;width:auto;text-align:center;padding-left:10px;padding-right:10px;padding-top:10px;padding-buttom:10px;">${qu.context }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${qu.rname }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">${qu.reason }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">
					<fmt:formatDate value='${qu.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
				</td>
				<td style="height:40px;width:130px;line-height:40px;text-align:center;"><a href="#">忽略</a> | <a href="#">删除</a></td>
			</tr>
		</c:forEach> 
	</table>
	
	<table id="ques_re" style="display:none;border-collapse:collapse;position:absolute;left:200px;top:200px;height:auto;width:1050px">
		<tr>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">被投诉人</th>
			<th style="height:40px;width:550px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉内容</th>
			<th style="height:40px;width:200px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉人</th>
			<th style="height:40px;width:300px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉原因</th>
			<th style="height:40px;width:450px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">投诉时间</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;line-height:40px;text-align:center;">操作</th>
		</tr>
		<c:forEach items="${rques }" var="rqu">
			<tr>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;">${rqu.rcname }</td>
				<td style="height:40px;width:auto;text-align:center;padding-left:10px;padding-right:10px;padding-top:10px;padding-buttom:10px;">${rqu.context }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${rqu.rname }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">${rqu.reason }</td>
				<td style="height:40px;width:200px;line-height:40px;text-align:center;">
					<fmt:formatDate value='${rqu.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
				</td>
				<td style="height:40px;width:130px;line-height:40px;text-align:center;"><a href="#">忽略</a> | <a href="#">删除</a></td>
			</tr>
		</c:forEach> 
	</table>
	
<script type="text/javascript">
	document.getElementById("i1").onclick = function(){
		document.getElementById("i1").style.background = 'linear-gradient(#f0faff,#cceeff,#9ddfff,#cceeff,#f0faff)'
		document.getElementById("i2").style.background = "none";
		document.getElementById("ques").style.display = 'block';
		document.getElementById("ques_re").style.display = 'none';
	}
	document.getElementById("i2").onclick = function(){;
		document.getElementById("i2").style.background = 'linear-gradient(#f0faff,#cceeff,#9ddfff,#cceeff,#f0faff)'
		document.getElementById("i1").style.background = "none";
		document.getElementById("ques").style.display = 'none';
		document.getElementById("ques_re").style.display = 'block';
	}
</script>
</body>
</html>