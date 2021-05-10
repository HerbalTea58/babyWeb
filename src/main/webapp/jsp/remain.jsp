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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>新首页</title>

<link rel="stylesheet" href="<%=basePath%>/css/remain.css" type="text/css" />
</head>
<body>
	
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
	
	
	<div class="change_img"> 
		<div id="lunbo">
			<ul id="shidian_img">
			<li style="list-style:none">
				<a href="<%=basePath %>/essay/id.do?id=${essay1.tid}">
					<img alt="${essay1.title }" id="img1" style="width:750px; height:450px" src="<%=basePath %>/image/${essay1.img}" />
				</a>
				<%-- <div class="onimg1">${essay1.preread}</div> --%>
			</li>
			<li style="list-style:none"><a href="<%=basePath %>/essay/id.do?id=${essay2.tid}"><img alt="${essay2.title }" id="img2" style="width:750px; height:450px" src="<%=basePath %>/image/${essay2.img}" /></a></li>
			<li style="list-style:none"><a href="<%=basePath %>/essay/id.do?id=${essay3.tid}"><img alt="${essay3.title }" id="img3" style="width:750px; height:450px" src="<%=basePath %>/image/${essay3.img}" /></a></li>
			<li style="list-style:none"><a href="<%=basePath %>/essay/id.do?id=${essay4.tid}"><img alt="${essay4.title }" id="img4" style="width:750px; height:450px" src="<%=basePath %>/image/${essay4.img}" /></a></li>
			<li style="list-style:none"><a href="<%=basePath %>/essay/id.do?id=${essay5.tid}"><img alt="${essay5.title }" id="img5" style="width:750px; height:450px" src="<%=basePath %>/image/${essay5.img}" /></a></li>
			</ul>
		</div> 
	</div> 
	
	<div id="lleft" style="width:300px; height:480px; float:left;margin-top:30px;position:relative">
 		<a href="<%=basePath %>/essay/id.do?id=${essay6.tid}">
 			<img class="limg1" alt="${essay6.title }" src="<%=basePath %>/image/${essay6.img}" style="width:370px;height:300px;">
		</a>
		<div style="width:10px;height:10px;transform: rotate(45deg);border-left:2px solid gray;border-top:2px solid gray;position:absolute;left:185px;top:302px;background-color:rgba(192,192,192,1);z-index:2"></div>
		<div class="ltext1" style="width:290px; height:100px; border:2px solid gray; radius:5px;position:absolute;left:43px;top:308px;background-color:rgba(192,192,192,1);z-index:1">
			<span style="float:left;margin-left:20px;margin-top:10px;margin-right:20px;font-size:17px;	overflow:hidden;text-overflow: ellipsis;white-space: normal!important;
					word-wrap: break-word;-webkit-line-clamp:3;-webkit-box-orient: vertical;display: -webkit-box;">
				${essay6.preread }
			</span>
		</div>
	</div>
	
	<div class="left2" style="width:550px;height:600px;float:left;margin-top:5px;">
		<div class="bot1" style="width:550px;height:300px;float:left;position:relative">
			<a href="<%=basePath %>/essay/id.do?id=${essay7.tid}"><img alt="${essay7.title }" src="<%=basePath %>/image/${essay7.img}" style="width:400px;height:300px;float:left;margin-left:5px;" /></a>
			<div style="width:10px; height:10px; border-left:2px solid gray;border-bottom:2px solid gray;position:absolute; left:409px;top:135px;transform: rotate(45deg);background-color:rgba(192,192,192,1);z-index:2"></div>
			<div class="ltext2" style="z-index:1; position:absolute; height:270px; width:120px; left:415px;top:10px;overflow:hidden;border:2px solid gray;background-color:rgba(192,192,192,1);">
				<span style="writing-mode:vertical-lr;float:left;margin-left:10px;margin-top:10px;margin-bottom:10px;margin-right:10px;width:105px; overflow:hidden;">${essay7.preread}</span>
			</div>
			
		</div>
		<div class="bot2" style="width:550px;height:300px;float:left;position:relative" >
			<div class="ltext3" style="z-index:1; position:absolute;height:270px; width:120px; left:15px; top:10px; overflow:hidden;border:2px solid gray; background-color:rgba(192,192,192,1)">
				<span style="writing-mode:vertical-lr;float:left;margin-left:10px;margin-top:10px;margin-bottom:10px;margin-right:10px;width:105px; overflow:hidden;">${essay8.preread}</span>
			</div>
			<div style="width:10px; height:10px; border-right:2px solid gray;border-top:2px solid gray;position:absolute; left:133px;top:135px;transform: rotate(45deg);background-color:rgba(192,192,192,1);z-index:2"></div>
			<a href="<%=basePath %>/essay/id.do?id=${essay8.tid}">
				<img alt="${essay8.title }" src="<%=basePath %>/image/${essay8.img}" style="width:390px;height:290px;float:left;margin-left:150px;margin-top:4px;" />
			</a>
		</div>
	</div>
	
	<div class="right2" style="width:605px;height:600px;float:left;position:relative;margin-top:5px;">
		<a href="<%=basePath %>/essay/id.do?id=${essay9.tid}">
			<img alt="${essay9.title }" src="<%=basePath %>/image/${essay9.img}" style="width:400px; height:300px;"/>
		</a>
		<div class="ltext2" style="z-index:1; position:absolute; height:270px; width:150px; left:430px;top:15px;overflow:hidden;border:2px solid gray;background-color:rgba(192,192,192,1);">
			<span style="writing-mode:vertical-lr;float:left;margin-left:20px;margin-top:10px;margin-bottom:10px;margin-right:10px;width:105px; overflow:hidden;">${essay9.preread}</span>
		</div>
		<div style="width:10px; height:10px; border-right:2px solid gray;border-bottom:2px solid gray;position:absolute; left:505px;top:283px;transform: rotate(45deg);background-color:rgba(192,192,192,1);z-index:2"></div>
		
		<a href="<%=basePath %>/essay/id.do?id=${essay0.tid}">
			<img alt="${essay0.title }" src="<%=basePath %>/image/${essay0.img}" style="width:400px; height:300px; position:absolute; left:200px; top:300px;">
		</a>
		<div class="ltext3" style="z-index:1; position:absolute; height:270px; width:150px; left:30px;top:310px;overflow:hidden;border:2px solid gray;background-color:rgba(192,192,192,1);">
			<span style="writing-mode:vertical-lr;float:left;margin-left:20px;margin-top:10px;margin-bottom:10px;margin-right:10px;width:105px; overflow:hidden;">${essay9.preread}</span>
		</div>
		<div style="width:10px; height:10px; border-left:2px solid gray;border-top:2px solid gray;position:absolute; left:100px;top:305px;transform: rotate(45deg);background-color:rgba(192,192,192,1);z-index:2"></div>
		
	</div>
	
	<div class="down">
		<span class="down1">意见反馈 | 版权所有 | 服务协议 | 隐私政策 | 联系我们</span>
		<span class="down2">违法和不良信息举报电话：400-044-5288 &nbsp;&nbsp;&nbsp; 举报邮箱：cs@babytree-inc.com</span>
		 <span class="down3">电信与信息服务业务经营许可证     网络文化经营许可证</span>
	</div>
	
	
	
	
<script>
 	 index=0;
	function show_img(){
             imgs=document.getElementById("shidian_img").children; //获取所以图片 并且存储到数组imgs数组里
             for(i =0; i<imgs.length;i++){                                
                      imgs[i].style.display="none";
             
             }                                                           //循环获取到imgs里面的元素，并且把它们隐藏设置为“”none“”
             imgs[index].style.display ="block";   //当所有元素都隐藏了，在显示当前index所指的图片。
           
             index ++;
             if(index >= imgs.length){
             
                      index=0;
                                 
                      }                                //判断index是否大于imgs的长度，等于imgs的长度后在重新赋予它初始值0；
                         
             }

 timer=setInterval(show_img,2000); //建立周期定时器。
</script>
<script type="text/javascript">
		window.onload = function(){
			if(${essay1 == NULL}){
				window.location="<%=basePath%>/login/unlogin.do";
			}
		}
</script>

</body>


</html>