<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 

<style>
.menu {
	width: 100%;
	height: 300px;
 	margin-top:120px;  
 	background: yellowgreen;
}
.menu ul{
 	padding-top:50px;  
	text-align: center;
}
.menu ul li{
	margin:150px 5px 0 5px;
	width:100px;
	display:inline-block;
	padding:5px 40px;
	border: 1px solid #333;
}
.menu p{
	text-align: center;
	padding: 15px;
}
.section{
	width:1800px;
 	height:800px; 
 	margin:0 auto;  
 	margin-top:50px;  
 	margin-bottom:30px; 
 	padding:10px;  
 	box-sizing: border-box; 
 	text-align:center; 
}
.section .item{
	float: left;
	width:80%;
	padding-left: 100px;
}
.section .item .info{
	width: 15%;
	padding:5px;
	height: 300px;
	display: inline-block;
	position: relative;
}
.section .item .info .gdsname{
	font-weight: 
}
.btn{
	clear:both;
	height:40px;
	float: right;
	width: 1000px;
	margin: 0 auto;
	margin-top: 20px;
	
}
.btn a{
	background:#666;
  	padding:10px 30px;
  	font-size: 16px;
  	color: #fff;
}
 aside{
 	width: 14%; 
	float: right; 
 } 
</style>
</head>
<body>
<header>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
</header>
<section>
	<nav>
		<div class="menu">
			<ul>
				<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=coffee">커피</a></li>
				<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=drink">음료</a></li>
				<li><a href="${pageContext.request.contextPath}/goods/list?gdsdivision=dessert">디저트</a></li>
			</ul>
			<p>※ 주문할 상품의 이미지를 클릭해주세요 ※</p>
		</div>
	</nav>
	<div class="section">
		<div class="item">
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="7">등록 된 상품이 없습니다</td>
						</tr>
					</c:if>
				<c:forEach var="item" items="${list}">
					<div class="info">
						<div>
							<a href="cart?gdsid=${item.gdsid}"><img src="../upload/${item.gdsimage}" width="200px" height="200px"></a> 
							
							<div class="gdsname">${item.gdsname}</div>
							<div><fmt:formatNumber value="${item.gdsprice}" pattern="###,###,###" /></div>
							
							<c:if test="${sessionScope.user.memid eq 'admin'}">
								<a href="${item.gdsid}/delete">삭제</a> 
								<a href="${item.gdsid}/update">변경</a>
							</c:if>
							
<%-- 							<c:if test="${sessionScope.user.memid != 'admin'}"> --%>
<%-- 									<a href="cart?gdsid=${item.gdsid}">주문</a> --%>
<%-- 							</c:if> --%>
						</div>
					</div>
				</c:forEach>
					
				</tbody>

		</div>
		
<%-- 	<c:if test="${cart.size() >= 1}">
		<aside>
		<jsp:include page="/WEB-INF/views/goods/cart.jsp"></jsp:include>
		</aside>
	</c:if> --%>
	
	
	<c:if test="${sessionScope.user.memid eq 'admin'}">
		<div class="btn">
			<div><a href="add">상품등록</a></div>
		</div>
	</c:if>
<%-- 	<c:if test="${sessionScope.user.memid != 'admin'}"> --%>
<!-- 			<div class="btn"> -->
<!-- 					<div><a href="cart">주문하기</a></div> -->
<!-- 			</div> -->
<%-- 		</c:if> --%>
	</div>
	
</section>


</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</html>