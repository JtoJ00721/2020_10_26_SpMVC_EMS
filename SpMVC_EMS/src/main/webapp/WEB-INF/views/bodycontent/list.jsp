<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<style>
#table_holder {
	text-align: center;
}

#table_div {
	display: inline-block;
	text-align: center;
	justify-content: center;
	align-items: center;
	width: 70%
}

#main_table {
	display: table;
	width: 100%;
	border-collapse: collapse;
	text-align: center;
	border: 3px dashed aqua;
	margin-top: 70px;
	margin-right: 0;
	transition: all 0.7s;
}

#main_table th, #main_table td {
	padding: 8px;
	border: 1px solid #aaa;
}

#main_table thead tr {
	background-color: gray;
	color: white;
	font-weight: bold;
}

#main_table tbody tr {
	cursor: pointer;
	transition: all 0.7s;
}

#main_table caption {
	font-size: 30px;
	margin: 20px 0px;
	color: olive;
	font-weight: bolder;
}

#btn_holder {
	text-align: center;
	margin-top: 20px;
}

#btn_div {
	display: inline-block;
	width: 70%;
	text-align: right;
}

#btn_div button {
	background-color: darksalmon;
	padding: 10px;
	outline: none;
	border-radius: 10px;
	color: aliceblue;
	border: 2px solid transparent;
	transition: all 0.5s;
}

#btn_div button:hover {
	font-weight: bolder;
	border: 2px solid black;
	box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.7);
	background-color: gray;
}

#main_table tr:hover {
	background-color: rgba(0, 0, 0, 0.2)
}

#main_table thead tr:first-child:hover {
	background-color: gray;
}
</style>
<section id="table_holder">
	<div id="table_div">
		<table id="main_table" summary="첨부파일 2개까지 보낼수 있는 이메일 발송 시스템">
			<caption>발송한 이메일</caption>
			<thead>
				<tr>
					<th>No.</th>
					<th>발송주소</th>
					<th>받는주소</th>
					<th>발송날짜</th>
					<th>발송시각</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ITEMS}" var="item" varStatus="i">
					<tr class="ems_items" data-id="${item.id}">
						<td>${i.count}</td>
						<td>${item.from_email}</td>
						<td>${item.to_email}</td>
						<td>${item.s_date}</td>
						<td>${item.s_time}</td>
						<td>${item.s_subject}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>

<section id="btn_holder">
	<div id="btn_div">
		<button type="button" onclick="writing()">새로 작성</button>
	</div>
</section>
<script>
	function writing() {
		document.location.href = "${rootPath}/write"
	}

	document.addEventListener("DOMContentLoaded", function() {
		let ems_list = document.querySelectorAll(".ems_items");
		ems_list.forEach(function (item_data) {
			item_data.addEventListener("click", function(){
				let id = item_data.getAttribute("data-id");
				document.location.href = `${rootPath}/detail/?id=` + id;
			})
		})
	})
</script>