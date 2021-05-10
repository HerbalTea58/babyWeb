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

<link rel="stylesheet" href="<%=basePath%>/css/userManage3.css" type="text/css" />

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
			<table style="border-collapse:collapse;position:absolute;left:200px;top:50px;height:auto;width:700px">
				<tr>
					<th style="height:40px;width:450px;background-color: #d1d1d1">文章</th>
					<th style="heigth:40px;width:250px;background-color:#d1d1d1">收藏时间</th>
				</tr>
				<c:forEach items="${cols}" var="col">
					<tr>
						<td style="height:50px; border-bottom:1px solid gray"><strong>&nbsp; [${col.etype}]</strong>&nbsp; ${col.title}</td>
						<td style="height:50px;text-align:center;border-bottom:1px solid gray">
						<fmt:formatDate value='${col.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</div>


<div class="down">
	<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
	<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
	<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
</div>

<script type="text/javascript">
	function blockDiv1(){
		document.getElementById("info").style.display = "block";
		document.getElementById("pw").style.display = "none";
		document.getElementById("col").style.display = "none";
	}
	function blockDiv2(){
		document.getElementById("info").style.display = "none";
		document.getElementById("pw").style.display = "block";
		document.getElementById("col").style.display = "none";
	}
	function blockDiv3(){
		document.getElementById("info").style.display = "none";
		document.getElementById("pw").style.display = "none";
		document.getElementById("col").style.display = "block";
	}
</script>


</body>


</html>