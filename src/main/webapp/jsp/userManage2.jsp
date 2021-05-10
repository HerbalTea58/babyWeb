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
<title>${loginUser.nickname}</title>

<link rel="stylesheet" href="<%=basePath%>/css/userManage2.css" type="text/css" />

</head>

<body>
<div class="all">
	
	
	
	<div class="top">
		<img class="logo1" alt="logo" src="<%=basePath %>/image/小logo1.png"/>
		<span class="text1">个人中心</span>
	</div>
	<hr color="gray" width="100%" size="3" style="float:left;"/>
	<div class="main">
		<div class="left">
			<button class="item" onclick="window.location='<%=basePath%>/jsp/userManage1.jsp'">个人信息</button>
			<button class="item" onclick="window.location='<%=basePath%>/jsp/userManage2.jsp'">更改密码</button>
			<button class="item" onclick="window.location='<%=basePath%>/user/collection.do?uid=${loginUser.uid}'">收藏记录</button>
		</div>
		
	
		<div class="main_main">
			
			<!-- <div id="pw" class="pw"> -->
				<form method="post" action="<%=basePath%>/">
					<input type="text" name="uid" style="display:none" value="${loginUser.uid }"/>
					<span class="span1">输入旧密码:</span>
					<input type="text" name="old1" class="old1" />
					<!-- <span class="span2">输入新密码:</span>
					<input type="text" name="old2" class="old2"/> -->
					<button id="span3" class="span3">确定</button>
				</form>
			<!-- </div> -->
			
		</div>
	</div>

</div>


<div class="down">
	<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
	<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
	<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
</div>

<script type="text/javascript">

</script>

</body>


</html>