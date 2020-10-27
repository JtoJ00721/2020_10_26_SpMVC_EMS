<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
header {
	background-color: cornflowerblue;
	background-size: 100%;
	border-bottom: 15px double black;
	color: white;
	text-align: center;
	padding: 2rem;
	position: fixd;
}

header h1 {
	margin: 16px;
	text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.2);
}

header p {
	font-size: 18px;
}
</style>
<header>
	<h1>농농이 이메일</h1>
	<p>통조림 안에 들어있는 햄을 보내보자</p>
</header>