<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.util.*,java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>再分类页</title>
	<link rel="stylesheet" href="<%=basePath%>/css/reclassify.css" type="text/css" />
</head>
<body>
	
<div class="all">

	

	<div class="top">
		<img class="logo1" alt="logo" src="<%=basePath %>/image/logo.png2.png"/>
	
		<div class="research">
			<form action="<%=path %>/essay/find.do" method="post">
				<input type="text" class="input" name="text" value="在这里搜索你的疑问" onfocus="if (value =='在这里搜索你的疑问'){value =''}" onblur="if (value==''){value='在这里搜索你的疑问'}"/>
				<button id="input2" class="input2" type="submit">搜索</button> 
			</form>
		</div>
		<div class="man">
			<c:if test="${loginUser != null}">
				<img class="profi" src="<%=basePath %>/image/宝宝1.jpg" />
				<div class="login2">${loginUser.nickname}</div>
			</c:if>
			<c:if test="${loginUser == null}">
				<div class="login1" style="margin-top:50px;">
					<a href="<%=path %>/jsp/login.jsp">登录</a> | <a href="#">注册</a>
				</div>
			</c:if>
		</div>
	</div>
	<hr color="gray" width="100%" size="3" style="float:left;"/>
	
	<div class="comeback" style="margin-left:150px">
		<a href="<%=path %>/jsp/main.jsp">首 页</a>&nbsp;>&nbsp;
	</div>
	<div class="comeback">
		<a href="<%=path %>/jsp/classify.jsp">${sname}</a>&nbsp;>&nbsp;
	</div>
	<div class="comeback">
		<a href="<%=path %>/jsp/reclassify.jsp">${tname}</a>
	</div>
	
	<div class="main">
		<c:forEach items="${types}" var="t">
			<div class="main2">
				<img alt="标签" src="<%=basePath%>/image/小花1.png" class="image1"/>
				<div class="title"><a href="<%=basePath%>/essay/id.do?id=${t.tid}">${t.title}</a></div>
				<div class="preread">${t.preread}</div>
				<div class="tags">
					<c:forEach items="${t.tagName}" var="tag">
						<div class="tag">${tag.tagName}</div>
					</c:forEach>
				</div>
				
			</div>
		</c:forEach>
		
		<!-- <div class="numPage">1 2 3 ... 8</div> -->
	</div>
	
	<div class="down">
		<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
		<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
		<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
	</div>
	
</div>
</body>
</html>