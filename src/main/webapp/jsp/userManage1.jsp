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

<link rel="stylesheet" href="<%=basePath%>/css/userManage.css" type="text/css" />

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
		
			<!-- <div class="item">首页</div> -->
			<button class="item" onclick="window.location='<%=basePath%>/user/userManage.do?uid=${loginUser.uid}'">个人信息</button>
			<button class="item" onclick="window.location='<%=basePath%>/jsp/userManage2.jsp'">更改密码</button>
			<button class="item" onclick="window.location='<%=basePath%>/user/collection.do?uid=${loginUser.uid}'">收藏记录</button>
		</div>
		
	
		<div class="main_main">

		<form action="post" id="form" action="<%=basePath %>/user/changeInfo.do">
			<div id="info" class="info">
				<span class="img2">头像：</span>
				<img class="img" src="<%=basePath %>/image/${userInfo.portrait}"/>
				<button id="upload" type="button" style="display:none;position:absolute;left:330px;top:100px;width:110px;height:30px">上传头像</button>
				<span class="uid">用户id: </span>
				<input id="uid1" style="display:none" name="uid" class="uid1" value="${userInfo.uid }" />
				<span id="uid2" class="uid2">${userInfo.uid }</span>
				
				<span class="nick">昵称:</span>
				<input id="nick1" style="display:none;position:absolute;left:210px;top:205px;font-size:18px;width:250px;height:30px;" 
					name="nick" class="nick1" value="${userInfo.nickname }" />
				<span id="nick2" class="nick2">${userInfo.nickname }</span>
				
				<span class="name">姓名:</span>
				<input id="name1" style="display:none;position:absolute;left:210px;top:250px;font-size:18px;width:250px;height:30px;" 
					name="name" class="name1" value="${userInfo.uname }" />
				<span id="name2" class="name2">${userInfo.uname }</span>
				
				<span class="sex">性别:</span>
				<input id="sex1" style="display:none;position:absolute;left:210px;top:295px;font-size:18px;width:250px;height:30px;" 
					name="sex" class="sex1" 
					value="<c:if test="${userInfo.usex == true}">男</c:if><c:if test="${userInfo.usex == false}">女</c:if>
				" />
				<span id="sex2" class="sex2">
					<c:if test="${userInfo.usex == true}">男</c:if>
					<c:if test="${userInfo.usex == false}">女</c:if>
				</span>
				
				<span class="state">用户状态:</span>
				<input id="state1" style="display:none;position:absolute;left:210px;top:340px;font-size:18px;width:250px;height:30px;" 
					name="state" class="state1" value="${userInfo.ustate }" />
				<span id="state2" class="state2">
					${userInfo.ustate }
				</span>
				
				<span class="phone">手机号码:</span>
				<input id="phone1" style="display:none;position:absolute;left:210px;top:385px;font-size:18px;width:250px;height:30px;" 
					name="phone" class="phone1" value="${userInfo.uphone}" />
				<span id="phone2" class="phone2">${userInfo.uphone}</span>
				
				<span class="email">邮箱:</span>
				<input id="email1" style="display:none;position:absolute;left:210px;top:430px;font-size:18px;width:250px;height:30px;" 
					name="email" class="email1" value="${userInfo.email}" />
				<span id="email2" class="email2">${userInfo.email}</span>
				
				<button id="change" type="button" class="change" onclick="change()">修改信息</button>
				<button id="submit" type="submit" class="submit" >提交</button>
			</div>
		</form>	
		
		</div>
	</div>

</div>


<div class="down">
	<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
	<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
	<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
</div>

<script type="text/javascript">
	function change(){
		document.getElementById("nick1").style.display = "block";
		document.getElementById("name1").style.display = "block";
		document.getElementById("sex1").style.display = "block";
		document.getElementById("state1").style.display = "block";
		document.getElementById("phone1").style.display = "block";
		document.getElementById("email1").style.display = "block";
		document.getElementById("upload").style.display = "block";
		document.getElementById("nick2").style.display = "none";
		document.getElementById("name2").style.display = "none";
		document.getElementById("sex2").style.display = "none";
		document.getElementById("state2").style.display = "none";
		document.getElementById("phone2").style.display = "none";
		document.getElementById("email2").style.display = "none";
	}
</script>


</body>


</html>