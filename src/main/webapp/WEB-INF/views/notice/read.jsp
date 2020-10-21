<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table/read.css"> 
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container">
		<div>
			<h2>공지사항</h2>
		</div>
		<hr />
		<section id="section">
			<form role="form" method="post">
				<tbody>
					<div class="view_tit">
						<h3>${read.ntctitle}</h3>
						<ul>
							<li>조회수 ${read.ntccnt}</li>
							<li><fmt:formatDate value="${read.ntcdate}" pattern="yyyy-MM-dd"/></li>
						</ul>
					</div>
					<div class="view_content" >
							<p>${read.ntccontent}</p>
					</div>
				</tbody>			
			</form>
		</section>
		<div class="btn">
			<div class="btn_list">
				<a href="${pageContext.request.contextPath}/notice/list">목록</a>
			</div>
			<c:if test="${sessionScope.user.memid eq 'admin'}">
				<div class="btn_sub">
					<a href="/notice/delete?ntcno=${read.ntcno}">삭제</a> 
					<a href="/notice/update?ntcno=${read.ntcno}">수정</a>
				</div>
			</c:if>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>