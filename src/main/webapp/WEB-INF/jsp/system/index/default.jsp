<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en" style="background: url('static/images/background.jpg');background-size: 100% 100%">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../index/top.jsp"%>
<script type="text/javascript">
setTimeout("top.hangge()",500);
</script>
</head>
<body class="no-skin">
<%--<img src="static/images/background.jpg" alt="欢迎使用King管理平台" width="100%" height="100%">--%>
</body>
</html>