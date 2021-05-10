<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,java.net.*"%>
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
<title>新问题</title>
<link rel="stylesheet" href="<%=basePath%>/css/adviseNew.css" type="text/css" />
</head>
<body>
	<div class="top">
		<img class="logo1" alt="logo" src="<%=basePath %>/image/问答logo.png"/>
	
		<div class="research">
			<form action="<%=path %>/essay/find.do" method="post">
				<input type="text" class="input" name="text" value="在这里搜索你的疑问" onfocus="if (value =='在这里搜索你的疑问'){value =''}" onblur="if (value==''){value='在这里搜索你的疑问'}"/>
				<button id="input2" class="input2" type="submit">搜索</button>
			</form>
		</div>
		<div class="man">
			<c:if test="${loginUser != null}">
				<a href="<%=basePath %>/user/userManage.do?uid=${loginUser.uid}"><img class="profi" src="<%=basePath %>/image/宝宝1.jpg" /></a>
				<div class="login2"><a href="<%=basePath %>/user/userManage.do?uid=${loginUser.uid}">${loginUser.nickname}</a></div>
			</c:if>
			<c:if test="${loginUser == null}">
				<div class="login1" style="margin-top:50px;">
					<a href="<%=path %>/jsp/login.jsp">登录</a> | <a href="#">注册</a>
				</div>
			</c:if>
		</div>
	</div>
	
	<form class="main" method="post" action="<%=basePath %>/advise/add.do">
		<input name="uid" value="${loginUser.uid }" style="display:none"/>
		<span class="tit"><strong>描述您的问题</strong></span>	
		<span class="title">问题描述:</span>
		<input name="title1" type="text" class="title1"/>
		<span class="title2">补充说明:</span>
		<textarea name="title2" rows="6" cols="75" class="title3"></textarea>
		<span class="title4">问题类型：</span>
		<select name="sel1" id="sel1">
			<option value="0">用户类型</option>
			<option value="1">备孕</option>
			<option value="2">孕期</option>
			<option value="3">0-3月</option>
			<option value="4">0-1岁</option>
			<option value="5">1-3岁</option>
			<option value="6">3岁以上</option>
		</select>
		<select name="sel2" id="sel2">
			<option value="0">用户状态</option>
			<option value="1">饮食</option>
			<option value="2">健康</option>
			<option value="3">亲子</option>
			<option value="4">生活</option>
			<option value="5">成长</option>
			<option value="6">其他</option>
		</select>
		
		<button class="but">发 布</button>
	</form>
	
	<div class="down">
		<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
		<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
		<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
	</div>
</body>
</html>