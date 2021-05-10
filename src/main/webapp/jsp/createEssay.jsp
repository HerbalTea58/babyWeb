<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
	<link rel="stylesheet" href="<%=basePath%>/css/createEssay.css" type="text/css" />
</head>
<body>
	<div class="top">
		<img alt="logo" class="img1" src="<%=basePath %>/image/logo.png2.png">
	</div>
	<div class="left">
		<div class="item" style="margin-top:10px;" onclick="window.location='<%=basePath %>/jsp/maPage.jsp'">首页</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/essay.do'">文章管理</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/comment.do'">评论管理</div>
		<div class="item" onclick="window.location='<%=basePath %>/manage/advise.do'">咨询管理</div>
	</div>
	<div class="main">
		<form action="<%=basePath %>/manage/addEssay.do" method="post">
			<input name="mid" style="display:none" value="${mid}"/>
	
			<span class="title">标题: </span>
			<input class="title1" name="title"/>
		
			<span class="preread">导读: </span>
			<textarea rows="6" cols="70" class="preread1" name="preread"></textarea>
			
			<!-- <div class="img">配图：</div> -->
			<!-- <button class="but4" type="button">上传配图</button> -->
			
			<span class="text">文章状态: </span>
			<select class="sel1" name="sel1">
				<option>—— ——</option>
				<option value="1">备孕期</option>
				<option value="2">孕期</option>
				<option value="3">0-3月</option>
				<option value="4">0-1岁</option>
				<option value="5">1-3岁</option>
				<option value="6">3岁以上</option>
			</select>
			<select class="sel2" name="sel2">
				<option>—— ——</option>
				<option value="1">饮食</option>
				<option value="2">健康</option>
				<option value="3">亲子</option>
				<option value="4">生活</option>
				<option value="5">成长</option>
				<option value="6">其他</option>
			</select>
		
			<span class="con">正文:</span>
			
			
			 <div id="but2" class="but2">
				<div id="div1"></div>
			 </div> 
			 <textarea id="text1" style="display:none" name="con"></textarea>
			
			<button type="submit" class="but3">发布</button>
		</form>
	</div>
	
	<script type="text/javascript" src="<%=basePath %>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/js/wangEditor.js"></script>
     <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div1')
        var $text1 = $('#text1')
        editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        }
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
        // 初始化 textarea 的值
        $text1.val(editor.txt.html())
    </script>
   <!--  <script type="text/javascript">
    	window.onload=function(){
    		if(${end == "true"})
    			alert("添加成功");
    	}
    </script> -->
</body>

</html>