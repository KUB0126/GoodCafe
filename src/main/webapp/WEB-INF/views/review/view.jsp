<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table/view.css"> 
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div class="container">
		<div>
			<h2>리뷰 게시판</h2>
		</div>
			<hr />
		<section id="section">
		<form role="form" method="post">
			<tbody>
			<table border="1">
				<div class="view_tit">
					<ul>
<%-- 						<li>작성자 ${view.memid}</li> --%>
						<li><fmt:formatDate value="${view.rvwdate}" pattern="yyyy-MM-dd"/></li>
						<li>조회수 ${view.rvwcnt}</li>
					</ul>
				</div>
				<div class="view_content">
					<p>${view.rvwcontent}</p>
					<p><img src="../upload/${view.rvwimg}" width="300px" height="300px"></p>
				</div>
			</table>
			</tbody>
		</form>
		</section>
			<div class="btn">
				<div class="btn_list">
					<a href="${pageContext.request.contextPath}/review/list">목록</a>
				</div>
				<c:if test="${sessionScope.user.memid == view.memid}">
					<div class="btn_sub">
						<a href="/review/delete?rvwno=${view.rvwno}">삭제</a> 
						<a href="/review/update?rvwno=${view.rvwno}">수정</a>
					</div>
				</c:if>
			</div>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>