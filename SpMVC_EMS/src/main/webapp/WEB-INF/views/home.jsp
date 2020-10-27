<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>2020-10-26 EMS 프로젝트</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html, body {
	height: 100%;
	width: 100%;
}

#main_content {
	height: 100%;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<section id="main_content">
		<c:choose>
			<c:when test="${BODY == 'WRITE'}">
				<%@ include file="/WEB-INF/views/bodycontent/write.jsp"%>
			</c:when>
			<c:when test="${BODY == 'DETAIL'}">
				<%@ include file="/WEB-INF/views/bodycontent/detail.jsp"%>
			</c:when>
			<c:otherwise>
				<%@ include file="/WEB-INF/views/bodycontent/list.jsp"%>
			</c:otherwise>
		</c:choose>
	</section>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>