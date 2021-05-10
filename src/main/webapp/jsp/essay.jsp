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
<title>主页</title>

<link rel="stylesheet" href="<%=basePath%>/css/essay.css" type="text/css" />

</head>

<body>
	<div class="all">
		<div class="top">
		<!-- <div class="title" style="font-family:华文行楷;"><span style="margin-top:20px;float:left">果果交流网</span></div> -->
			<img class="title" src="<%=basePath %>/image/logo.png2.png" />
			<div class="reasch">
				<input type="text" class="input" value="在这里搜索你的疑问" onfocus="if (value =='在这里搜索你的疑问'){value =''}" onblur="if (value==''){value='在这里搜索你的疑问'}"/>
				<button class="input2">搜索</button> 
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
		
	<hr color="gray" width="140%" size="3" style="margin-top:30px;float:left;margin-left:-200px"/>


	<div class="comeback" style="margin-left:100px">
		<a href="<%=path %>/jsp/main.jsp">首 页</a>&nbsp;>&nbsp;
	</div>
	<div class="comeback">
		<a href="<%=path %>/jsp/classify.jsp">${essayInfo.etype}</a>&nbsp;>&nbsp;
	</div>
	<div class="comeback">
		<a href="<%=path %>/jsp/reclassify.jsp">${essayInfo.ustate}</a>&nbsp;>&nbsp;
	</div>
	<div class="comeback">
		<a href="<%=path %>/jsp/reclassify.jsp">${essayInfo.title}</a>
	</div>


<div class="main">
	<h2 style="margin-left:350px; margin-top:30px">${essayInfo.title}</h2>
	<p class="preread">${essayInfo.preread}</p>
	<c:if test="${essayInfo.img != null }">
		<img class="image2" src="<%=path%>/image/${essayInfo.img}" />
	</c:if>
	<div class="context">
		${essayInfo.ecomtent}
	</div>
	
	<div class="action">
		<span class="click">浏览数: ${essayInfo.eclick }</span>
		<div class="good">
			<img id="good1" style="float:left;margin-top:3px;" src="<%=path%>/image/good1.png" onclick="changeGood()"/>
			<img id="good2" style="display:none;float:left;margin-top:3px;" src="<%=path%>/image/good2.png" onclick="changeGood()"/>
			<span class="good1">${essayInfo.good }</span>
		</div>
		
		<div class="collect">
			<img style="float:left;margin-top:3px;" src="<%=path %>/image/收藏图标2.jpg"/>
			<span class="collect1">${essayInfo.collection }</span>
		</div>
	</div>
	
</div>
<form action="<%=basePath%>/essay/putCom.do" method="post">
	<input name="tid" value="${essayInfo.tid }" style="display:none;"/>
	<input name="uid" value="${loginUser.uid }" style="display:none;"/>
	<textarea name="con" rows="5" cols="122" class="putcom"></textarea>
	<span class="but2">请在这里留下您的意见吧</span> 
	<button type="submit" class="but3">发布</button>
</form>


<div class="comment">
	<c:forEach items="${comment }" var="com" varStatus="no">
		<div class="little">
		
			<div class="littletop">
				<span class="in0">No.${no.index+1}</span>
				<span class="in1">昵称:${com.uname}</span>
				
				<span class="in2">回复时间：
				<fmt:formatDate value='${com.date}' pattern='yyyy-MM-dd HH:mm:ss'/>
				</span>
			</div>
		
			<div class="littlemid">
				<c:if test="${com.ruid!=0}">
					<span style="color:gray">回复：${com.runame} <br/></span>
				</c:if>
				<p style="margin-top:5px;">${com.context}</p>
			</div>
			<div class="littledown">
			</div>
		
		</div>
	
	</c:forEach>
	
</div>




<div class="down">
	<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
	<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
	<span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
</div>
</div>

<script type="text/javascript">
 	function changeGood(){
 		var good1 = document.getElementById("good1");
 		var good2 = document.getElementById("good2");
 		if(good1.style.display == "block"){
 			good1.style.display = "none";
 			good2.style.display = "block";
 		}
 		if(good2.style.display == "block"){
 			good2.style.display = "none";
 			good1.style.display = "block";
 		}
 	}
</script>

</body>


</html>