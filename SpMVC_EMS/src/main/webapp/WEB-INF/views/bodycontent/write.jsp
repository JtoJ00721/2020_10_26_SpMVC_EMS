<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

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

#iteminput {
	width: 60%;
	margin: 50px auto;
}

#iteminput div {
	display: flex;
	width: 95%;
	margin: 0 auto;
}

#iteminput label {
	flex: 1;
	text-align: right;
	padding: 8px;
	margin: 5px;
}

#iteminput div.hidden {
	display: none;
}

#iteminput input, #iteminput select {
	flex: 5;
	border: 1px solid #ddd;
	margin: 5px;
	padding: 8px;
}

#iteminput fieldset {
	border: 1px solid rgb(0, 100, 200);
	border-radius: 10px;
	padding: 20px;
}

#iteminput fieldset legend {
	padding: 3px 30px;
	color: brown;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
	transition: all 0.7s;
	color: brown;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
}

#iteminput fieldset legend:hover {
	background-color: black;
	color: white;
	font-weight: bold;
}

#iteminput #title {
	width: 70%;
}

#iteminput div.btn-box {
	justify-content: flex-end;
}

#iteminput button {
	border: none;
	outline: 0;
	padding: 0.5rem 12px;
	border-radius: 5px;
}

#iteminput button#btn_save {
	cursor: pointer;
	background-color: black;
	color: white;
	padding: 0.5rem 25px;
	margin-left: 10px;
	transition: all 0.3s;
}

#btn_save:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
	background-color: cornflowerblue;
	font-weight: bold;
}

#btn_list {
	cursor: pointer;
	background-color: gray;
	color: wheat;
	padding: 0.5rem 25px;
	margin-left: 10px;
	transition: all 0.3s;
}

#btn_list:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
	background-color: darksalmon;
	font-weight: bold;
}
</style>

<form:form id="iteminput" modelAttribute="EMSVO">
	<fieldset>
		<legend>남한테 편지 던지기</legend>

		<div class="hidden">
			<label for="id"></label>
			<form:input path="id" type="hidden" />
		</div>

		<div class="hidden">
			<label for="s_date"></label>
			<form:input path="s_date" type="hidden" />
		</div>

		<div class="hidden">
			<label for="s_time"></label>
			<form:input path="s_time" type="hidden" />
		</div>

		<div>
			<label for="from_email">발송Email</label>
			<form:input id="from_email" path="from_email" placeholder="발송Email" />
		</div>

		<div>
			<label for="to_email">받는Email</label>
			<form:input id="to_email" path="to_email" placeholder="받는Email" />
		</div>

		<div>
			<label for="s_subject">제목</label>
			<form:input id="s_subject" path="s_subject" placeholder="제목" />
		</div>

		<div>
			<label for="s_content">내용용이</label>
			<form:textarea id="s_content" rows="5" cols="80" path="s_content"/>
		</div>

		<div class="btn-box">
			<button id="btn_list" type="button" onclick="tolist()">리스트로</button>
			<button id="btn_save" type="submit">저장</button>
		</div>
	</fieldset>
</form:form>

<script>
	function tolist() {
		document.location.href = "${rootPath}"
	}

//	function saveData() {
//		let from_email = document.getElementById("form_email");
//		let to_email = document.getElementById("to_email");
//		let s_subject = document.getElementById("s_subject");
//		let s_content = document.getElementById("s_content");
//		
//		alert(from_email);
		
//		if(from_email == "" || from_email == null ) {
//			alert("발송 이메일을 입력해주세요 ><");
//		} 
		
		
//	}   onclick="saveData()"
</script>