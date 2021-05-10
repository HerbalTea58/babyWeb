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
<title>果果问答</title>
<link rel="stylesheet" href="<%=basePath%>/css/adviseClassify.css" type="text/css" />
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
	
	<div class="left">	
		<button class="item1" style="margin-left:70px;" onclick="window.location='<%=basePath%>/advise/all.do'">问 答</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=1'">饮 食</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=2'">健 康</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=3'">亲 子</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=4'">生 活</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=5'">成 长</button>
		<button class="item1" onclick="window.location='<%=basePath %>/advise/type.do?id=6'">其 他</button>
		<button class="item1" onclick="window.location='<%=basePath %>/jsp/adviseNew.jsp'">我要提问</button>
	</div>
	
	<div class="main">
		<div class="main_left">
			<span class="text1"><strong>新问题</strong></span>
			
			<c:forEach items="${advises}" var="ad">
				<div class="ques">
					<img alt="标签" src="<%=basePath%>/image/小花2.png" class="image1"/>
					<div class="ques1">
						<span class="t1"><a href="<%=basePath%>/advise/id.do?id=${ad.aid}">${ad.atitle}</a></span>
						<%-- <span class="tag1">${ad.ustate }</span> --%>
						<span class="tag2">现${ad.renum}个回答</span> 
					</div>
					<img alt="头像" src="<%=basePath%>/image/${ad.portrait}" class="image2" />
					<span class="text2">${ad.nickname } &nbsp;&nbsp; 提问 &nbsp;&nbsp; </span> 
					<span class="text3">发布时间：
					<fmt:formatDate value='${ad.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
					</span> 
				</div>
			</c:forEach>
		</div>
		<div class="main_right">
			<span class="tex1"><strong>优秀问答</strong></span>
			<c:forEach items="${replies }" var="re">
				<div class="tex2">
					<img alt="标签" src="<%=basePath%>/image/小花1.png" class="image3"/>
					<span class="tex3"><a href="<%=basePath%>/advise/id.do?id=${re.aid}">${re.atitle }</a></span>
					<%-- <span class="tex4">现${re.renum}个回答</span> --%>
					<span class="tex5">
					<fmt:formatDate value='${re.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
					</span>
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