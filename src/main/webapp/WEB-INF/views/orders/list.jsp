<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문관리</title>
<style>
.section{
	padding: 20px;
	margin-top: 120px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="section">
			<h2>주문내역</h2>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>주문번호</th>
						<th>고객아이디</th>
						<th>결제금액</th>
						<th>주문일자</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>

			<c:if test="${sessionScope.user.memid eq 'admin'}">
				<c:choose>
					<c:when test="${list.size() > 0}">
						<c:forEach var="item" items="${list}">
							<tr>
								<td><a href="${item.orderid}/view">${item.orderid}</a></td>
								<td>${item.memid}</td>
								<td><fmt:formatNumber value="${item.saleprice}" pattern="#,###"></fmt:formatNumber></td>
								<td><fmt:formatDate value="${item.orderdate}" pattern="YYYY-MM-dd hh:mm"/></td>
								<td><a href="${item.orderid}/delete">삭제</a></td>
							</tr>
						</c:forEach>
					</c:when>
				
					<c:otherwise>
						<tr>
							<td colspan="5">주문내역이 없습니다</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:if>
				
<%-- 			<c:if test="${sessionScope.user.memid ne 'admin'}"> --%>
<%-- 				<c:choose> --%>
<%-- 					<c:when test="${sessionScope.user.memid eq list.memid}"> --%>
<%-- 						<c:forEach var="item" items="${list}"> --%>
<!-- 							<tr> -->
<%-- 								<td><a href="${item.orderid}/view">${item.orderid}</a></td> --%>
<%-- 								<td>${item.memid}</td> --%>
<%-- 								<td><fmt:formatNumber value="${item.saleprice}" pattern="#,###"></fmt:formatNumber></td> --%>
<%-- 								<td><fmt:formatDate value="${item.orderdate}" pattern="YYYY-MM-dd hh:mm"/></td> --%>
<%-- 								<td><a href="${item.orderid}/delete">삭제</a></td> --%>
<!-- 							</tr> -->
<%-- 						</c:forEach> --%>
<%-- 					</c:when> --%>
				
<%-- 					<c:otherwise> --%>
<!-- 						<tr> -->
<!-- 							<td colspan="5">주문내역이 없습니다</td> -->
<!-- 						</tr> -->
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>
<%-- 			</c:if> --%>
			
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>