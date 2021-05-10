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
<title>问 答</title>
<link rel="stylesheet" href="<%=basePath%>/css/advise.css" type="text/css" />
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
		<button class="item1">健 康</button>
		<button class="item1">亲 子</button>
		<button class="item1">生 活</button>
		<button class="item1">成 长</button>
		<button class="item1">其 他</button>
		<button class="item1">我要提问</button>
	</div>
	
	<div class="all">
		<div class="main">
			<div id="ques" class="ques">
				<span class="title"><strong>${advise.atitle }</strong></span>
				<div class="content">${advise.acontent }</div>
				<img alt="头像" src="<%=basePath%>/image/${user.portrait}" class="image1" />
				<span class="nick">${user.nickname }</span>
				<span class="time">
					<fmt:formatDate value='${advise.date }' pattern='yyyy-MM-dd HH:mm:ss'/>
					&nbsp;&nbsp; 提问
				</span>
				<button id="but1" class="but1">我来回答 ∨</button>
				<form action="<%=basePath%>/advise/addReply.do" method="post">
					<input style="display:none" name="uid" value="${loginUser.uid}" />
					<input style="display:none" name="aid" value="${advise.aid}" />
					<textarea name="con" id="but2" rows="5" cols="60" style="display:none;position:absolute;top:150px;left:180px;"></textarea>
					<button type="submit" id="but3" style="display:none;width:120px;height:30px;background: linear-gradient(#ffffdb,#ffff9f,#ffffdb);position:absolute;top:245px;left:350px">
						提交</button>
				</form>
			</div>
			<div class="responce"><strong>&nbsp;&nbsp;&nbsp;回 答</strong></div>
			
			<c:forEach items="${reply}" var="re">
				<div class="reply">
					<img alt="头像" src="<%=basePath%>/image/${re.portrait}" class="image2" />
					<span class="nick2">${re.nickname} &nbsp;&nbsp;&nbsp;回答</span>
					<span class="time2">
						<fmt:formatDate value='${re.date }' pattern='yyyy-MM-dd HH:mm:ss'/>
					</span>
					<div class="con2">${re.con }</div>
					<img class="good1" src="<%=path%>/image/good1.png" />
					<span class="good2">${re.good}</span>
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
 	  	
    	document.getElementById("but1").onclick = function(){
   			var div = document.getElementById("but2");
   			var div2 = document.getElementById("ques");
   			var div3 = document.getElementById("but3");
   			if(div.style.display == "none"){
   				div.style.display = "block";
   				div2.style.height = "280px";
   				div3.style.display = "block";
   			}else{
   				div.style.display = "none";
   				div2.style.height = "140px";
   				div3.style.display = "none";
   			}
   		} 
   	</script>
	<script type="text/javascript" src="<%=basePath %>/js/wangEditor.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div1', '#div2')
        // 自定义菜单配置
        editor.customConfig.menus = [
        	'head',  // 标题
            'bold',  // 粗体
            'fontSize',  // 字号
            'fontName',  // 字体
            'italic',  // 斜体
            'underline',  // 下划线
            'strikeThrough',  // 删除线
            'foreColor',  // 文字颜色
            'link',  // 插入链接
            'list',  // 列表
            'emoticon',  // 表情
            'undo',  // 撤销
            'redo'  // 重复
        ]
        editor.create()
    </script>
   	
</body>
</html>