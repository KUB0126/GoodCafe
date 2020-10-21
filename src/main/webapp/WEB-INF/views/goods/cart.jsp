<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 
<style>
.section{
	margin:0 auto; 
	width: 1000px;
	height:800px;
	padding-top:150px;
}
.section .wrap{
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}

</style>
</head>
<body>
<header>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
</header>
<section class="section">
	<h2>장바구니</h2>
	<div class="wrap">
		<div class="order">
			<c:if test="${sessionScope.cart.isEmpty()}">
				<div>장바구니에 주문 정보가 없습니다</div>
			</c:if>
			
<%-- 	<c:set var="sum" value="0"/> --%>
			<c:forEach var="item" items="${sessionScope.cart}">
<%-- 			<div>${item.key}</div> --%>
				<div class="name">${item.value.gdsname}</div>
<%-- 			<div>${item.value.gdsprice}</div> --%>
				<div class="amount">${item.value.amount}</div>
				<div class="price">${item.value.gdsprice * item.value.amount}</div>
<%-- 	<c:set var="sum" value="${sum + (item.value.gdsprice * item.value.amount)}"/> --%>
			
			</c:forEach>
<%-- 	<div class="sum">총금액  : <fmt:formatNumber pattern="###,###,###" value="${sum}"/>원</div> --%>
<!-- 			<div><input type="text" name="memo" placeholder="요청사항을 작성해주세요."></div> -->
<%-- 			<div class="memo">${item.value.memo}</div> --%>
		</div>
		<div class="btn"><a href="order">주문하기</a></div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>