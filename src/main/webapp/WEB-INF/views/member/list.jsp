<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<div>
		<div>
			<h3>회원목록</h3>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>고객명</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.memid}</td>
							<td>${item.password}</td>
							<td>${item.name}</td>
							<td>${item.phone}</td>
							<td>${item.email}</td>
							<td><a href="${item.memid}/delete">삭제</a> <a href="${item.memid}/update">변경</a></td>
						</tr>
					</c:forEach>
					<c:if test="${item.size() < 1}">
						<tr>
							<td colspan="6">회원이 없습니다</td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
			<div><a href="..">메인으로</a></div>
<!-- 			<div><a href="add">회원등록</a></div> -->
	</div>
</body>
</html>