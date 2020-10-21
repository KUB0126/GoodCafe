<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css"> 
</head>
<body>
	<header id="header-nav">
		<div class="login">
			<div class="login_info">
				<c:if test="${sessionScope.user != null }">
					<div><a href="${pageContext.request.contextPath}/logout">로그아웃</a></div>
					<div>${sessionScope.user.memid}님환영합니다 ~</div>
				</c:if>
		
				<c:if test="${sessionScope.user == null }">
					<div><a href="${pageContext.request.contextPath}/signup">회원가입</a></div>
					<div><a href="${pageContext.request.contextPath}/login">로그인</a></div>
				</c:if>
			</div>
		</div>
		<div class="gnb">
			<a href=".."><h1>Good Café</h1></a>
			<nav class="gnb_nav">
				<ul class="main_nav">
<%-- 					<li><a href="${pageContext.request.contextPath}/goods/list">전체메뉴</a> --%>
					<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=coffee">전체메뉴</a>
						<ul class="sub_nav">
							<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=coffee">커피</a></li>
							<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=drink">음료</a></li>
							<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=dessert">디저트</a></li>
						</ul>
					</li>
					<li><a href="${pageContext.request.contextPath}/goods/cart">주문하기</a>
						<ul class="sub_nav">
							<li><a href="${pageContext.request.contextPath}/goods/cart">장바구니</a></li>
							<li><a href="${pageContext.request.contextPath}/orders/plist?memid">주문내역</a></li>
						</ul>
					</li>
					<li><a href="#">커뮤니티</a>
						<ul class="sub_nav">
							<li><a href="${pageContext.request.contextPath}/review/list">리뷰</a></li>
							<li><a href="${pageContext.request.contextPath}/inquiry/list">문의하기</a></li>
							<li><a href="${pageContext.request.contextPath}/notice/list">공지사항</a></li>
						</ul>
					</li>
					<c:if test="${sessionScope.user.memid eq 'admin'}">
					<li><a href="#">관리자 페이지</a>
						<ul class="sub_nav">
							<li><a href="${pageContext.request.contextPath}/member/list">회원관리</a></li>
							<li><a href="${pageContext.request.contextPath}/orders/list">주문관리</a></li>
						</ul>
					</li>
					</c:if>
					<c:if test="${sessionScope.user.memid != 'admin'}">
<%-- 					<c:if test="${sessionScope.user.memid != login.memid}"> --%>
					<li><a href="#">마이페이지</a>
						<ul class="sub_nav">
							<li><a href="${pageContext.request.contextPath}/orders/plist">주문내역</a></li>
<%-- 							<li><a href="/orders/${user.memid}/list">주문내역</a></li> --%>
							<li><a href="#">리뷰목록</a></li>
							<li><a href="${pageContext.request.contextPath}/member/${user.memid}/update">MY정보</a></li>
						</ul>
					</li>
					</c:if>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>