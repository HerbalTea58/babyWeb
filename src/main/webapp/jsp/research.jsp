<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>

<link rel="stylesheet" href="<%=basePath%>/css/research.css" type="text/css" />
</head>
<body>
	<div class="all">
		<div class="top">
			<img class="title" src="<%=basePath %>/image/logo.png2.png" />
			<div class="reasch">
				<form action="<%=path %>/essay/find.do" method="post">
					<input type="text" class="input" name="text" value="在这里搜索你的疑问" onfocus="if (value =='在这里搜索你的疑问'){value =''}" onblur="if (value==''){value='在这里搜索你的疑问'}"/>
					<button id="input2" class="input2" type="submit">搜索</button> 
				</form>
			</div>
		</div>
		<hr color="gray" width="140%" size="3" style="margin-top:30px;float:left;margin-left:-200px"/>
		<div class="middle">
			<c:forEach items="${research }" var="rt" varStatus="re">
				<div class="quart">
					<div class="head">
						<a href="<%=path %>/essay/id.do?id=${rt.tid}">${rt.title }</a>
					</div>
					<div class="pre">
						${rt.preread }
					</div>
					<div class="time">
						<fmt:formatDate value='${rt.etime }' pattern='yyyy-MM-dd HH:mm:ss'/>
						
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<div class="down">
		<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
		<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
		<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
	</div>
</body>
</html>