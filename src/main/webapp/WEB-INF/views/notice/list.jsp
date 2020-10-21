<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table/list.css"> 
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div class="section">
		<h2>공지사항</h2>
		<div>
			<section>
				<form role="form" method="post" >
					<table>
						<thead>
						<tr>
							<th>NO</th>
							<th>제목</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${list}" var ="list">
							<tr>
								<td><c:out value="${list.ntcno}" /></td>
								<td><a href="/notice/read?ntcno=${list.ntcno}"><c:out value="${list.ntctitle}" /></a></td>
								<td><fmt:formatDate value="${list.ntcdate}" pattern="yyyy-MM-dd"/></td>
								<td><c:out value="${list.ntccnt}"/></td>
							</tr>
						</c:forEach>
						<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">작성된 공지가 없습니다</td>
						</tr>
					</c:if>
						</tbody>
					</table>
				</form>
			</section>
		</div>
		<c:if test="${sessionScope.user.memid eq 'admin'}">
			<div class="btn">
				<a href="add">작성</a>
			</div>
		</c:if> 
	</div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>