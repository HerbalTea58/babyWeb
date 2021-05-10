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

<link rel="stylesheet" href="<%=basePath%>/css/main.css" type="text/css" />

</head>

<body>
	 <div id="div1" style="float:left">
        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    </div>
    <textarea id="text1" style="width:100%; height:200px;float:left"></textarea>

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
        editor.create()
        // 初始化 textarea 的值
        $text1.val(editor.txt.html())
    </script>







</body>


</html>