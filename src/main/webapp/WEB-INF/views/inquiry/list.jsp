<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table/list.css"> 
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div class="section">
		<h2>문의사항</h2>
		<div>
			<section>
				<form role="form" method="post" >
					<table>
						<thead>
						<tr>
							<th>NO</th>
							<th>제목</th>
							<th>문의자</th>
							<th>등록일</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${list}" var ="list">
							<tr>
								<td><c:out value="${list.inqno}" /></td>
								<td><a href="/inquiry/view?inqno=${list.inqno}"><c:out value="${list.inqtitle}" /></a></td>
								<td><c:out value="${list.inqwriter}" /></td>
								<td><fmt:formatDate value="${list.inqdate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
						<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">작성된 문의사항이 없습니다</td>
						</tr>
					</c:if>
						</tbody>
					</table>
				</form>
			</section>
		</div>
		<div class="btn">
			<a href="add">작성</a>
		</div>
	</div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>