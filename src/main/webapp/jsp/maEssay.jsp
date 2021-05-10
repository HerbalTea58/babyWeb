<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>文章管理</title>
	<link rel="stylesheet" href="<%=basePath%>/css/maEssay.css" type="text/css" />
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
	
	<button class="add" onclick="window.location='<%=basePath %>/jsp/createEssay.jsp'">发布文章</button>
	
	<table style="border-collapse:collapse;position:absolute;left:200px;top:170px;height:auto;width:1050px">
		<tr>
			<th style="height:40px;width:170px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">发布人</th>
			<th style="height:40px;width:550px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">文章名</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">文章状态</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">文章类</th>
			<th style="height:40px;width:150px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">点击量</th>
			<th style="height:40px;width:150px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">点赞量</th>
			<th style="height:40px;width:150px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">收藏量</th>
			<th style="height:40px;width:450px;background-color: #e3e4ff;border-right:1px solid #d1d1d1;line-height:40px;text-align:center;">发布时间</th>
			<th style="height:40px;width:250px;background-color: #e3e4ff;line-height:40px;text-align:center;">操作</th>
		</tr>
		<c:forEach items="${essays }" var="essay">
			<tr>
				<td style="height:40px;width:170px;line-height:40px;text-align:center;">${essay.mid }</td>
				<td style="height:40px;width:550px;line-height:40px;text-align:center;padding-left:10px;padding-right:10px;padding-top:10px;padding-buttom:10px;">${essay.title }</td>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;">${essay.etype }</td>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;">${essay.ustate }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${essay.eclick }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${essay.good }</td>
				<td style="height:40px;width:150px;line-height:40px;text-align:center;">${essay.collection }</td>
				<td style="height:40px;width:450px;line-height:40px;text-align:center;">
					<fmt:formatDate value='${essay.etime }' pattern='yyyy-MM-dd HH:mm:ss'/>
				</td>
				<td style="height:40px;width:250px;line-height:40px;text-align:center;"><a href="<%=basePath%>/manage/findEssay.do?tid=${essay.tid}">查看</a> | <a id="${essay.tid }" href="#" onclick="removeEssay(this); return false;">删除</a></td>
			</tr>
		</c:forEach> 
	</table>
	<script type="text/javascript" src="<%=basePath %>/js/jquery.min.js"></script>
	<script type="text/javascript">
		function removeEssay(Obj){
			var remove = $(Obj).attr("id");
			alert(remove);
            if(confirm("你确认要删除吗?")){
                $.ajax({
                    type: "POST",
                    url: '<%=basePath%>/manage/removeEssay',
                    data: {
                        "id": remove,
             
                    },
                    DataType: "json",
                    success: function (data) {
                        if (data == '1') {
                        	alert($(Obj).parentNode.parentNode);
                           	$(Obj).parentNode.parentNode.remove(Obj.parentNode);
                            alert("删除成功!");

                        } else {
                            alert("删除失败！");
                        }
                    }
                });
            }
        }

	</script>
</body>
</html>