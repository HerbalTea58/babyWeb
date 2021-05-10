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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>分页</title>

	<link rel="stylesheet" href="<%=basePath%>/css/classify.css" type="text/css" />
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
	
	<div class="left">	
		<button class="item1" style="margin-top:15px;" onclick="window.open('<%=basePath %>/jsp/remain.jsp')">首页</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">备孕期</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">孕期指南</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">0-1月</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">0-1岁</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">1-3岁</button>
		<button class="item1" onclick="window.location='<%=basePath %>/login/classify.do?id=1'">3-6岁</button>
		<button class="item1" onclick="window.open('<%=basePath%>/advise/all.do')">问 答</button>
		<div class="bor"></div>
	</div>
	
	<div class="main">
		<div class="mid">
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=1">饮 食</a></span></div>
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=2">健 康</a></span></div>
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=3">亲 子</a></span></div>
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=4">生 活</a></span></div>
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=5">成 长</a></span></div>
			<div class="type"><span class="te"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=6">其 他</a></span></div>
		</div>
		<img class="arrow1" src="<%=basePath %>/image/箭头.png"/>
		<img class="arrow2" src="<%=basePath %>/image/箭头.png"/>
		<img class="arrow3" src="<%=basePath %>/image/箭头.png"/>
		<img class="arrow4" src="<%=basePath %>/image/箭头2.png"/>
		<img class="arrow5" src="<%=basePath %>/image/箭头2.png"/>
		<img class="arrow6" src="<%=basePath %>/image/箭头2.png"/>
		
		
		<div class="quart1">
			<ul>
				<c:forEach items="${types2}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
				
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=2">more ></a></div>
		</div>
		<div class="quart2">
			<ul>
				<c:forEach items="${types4}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=4">more ></a></div>
		</div>
		<div class="quart3">
			<ul>
				<c:forEach items="${types6}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=6">more ></a></div>
		</div>
		<div class="quart4">
			<ul>
				<c:forEach items="${types1}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=1">more ></a></div>
		</div>
		<div class="quart5">
			<ul>
				<c:forEach items="${types3}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=3">more ></a></div>
		</div>
		<div class="quart6">
			<ul>
				<c:forEach items="${types5}" var="t1" varStatus="t">
					<li>
						<span class="s1">no${t.index+1}</span> 
						<div class="s2"><a href="<%=basePath %>/essay/id.do?id=${t1.tid}">${t1.title}</a></div>
						<span class="s3">
						<fmt:formatDate value='${t1.etime}' pattern='yyyy-MM-dd'/>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div class="s4"><a href="<%=basePath %>/login/reclassify.do?sid=${sid}&tid=5">more ></a></div>
		</div>
	</div>
 
	<div class="down">
		<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
		<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
		<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
	</div>
</div>
</body>
<script>

</script>

</html>