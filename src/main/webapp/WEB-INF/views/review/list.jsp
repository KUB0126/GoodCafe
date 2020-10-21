<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
<style>
.section{
	width:1100px;
	height: 820px;
	margin:0 auto; 
	margin-top:140px; 
	margin-bottom:30px;
	padding:15px; 
	box-sizing: border-box;
	text-align:center;
}
.section h2{
	text-align:left;
	font-size: 24px;
	padding-bottom: 20px;
	margin-bottom:30px;
	border-bottom: 1px solid #444444;
}
.section .box{
	width: 100%;
	margin:0 auto; 
}
.section .review{
	border: 1px solid #ddd; 
	width: 22%;
	margin: 15px;
	float: left;
	box-sizing: border-box;
}
.section .review p{
	color: gray;
}
.section .review .content{
	width:100%;
	text-align:left;
	color:#000;
	font-weight:bold;
	font-size: 16px;
	text-overflow:ellipsis;
	overflow:hidden;
	white-space:nowrap;
	border-bottom: 1px solid #ddd;
}

.section .review .memid{
	padding:3px;	
	text-align: left;
	width: 100px;
	float: left;
}
.section .review .rvwdate, .rvwcnt{
	text-align: right;
	padding-right: 2px;
}
.btn{
	width:1100px;
	margin:0 auto;
	height:50px;
	padding:0px 50px;
	text-align: right;
}
 .btn a{
	background:#666;
  	padding:10px 30px;
  	font-size: 16px;
  	color: #fff;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="section">
	<div class="box">
		<h2>리뷰 게시판</h2>
			<tbody>
				<c:forEach var="list" items="${list}">
				<div class="review">
					<p><a href="/review/view?rvwno=${list.rvwno}"><img src="../upload/${list.rvwimg}" width="100%" height="200px"></a></p>
					<p class="content"><c:out value="${list.rvwcontent}"/></p>
					<p class="memid">${list.memid}</p>
					<p class="rvwdate"><fmt:formatDate value="${list.rvwdate}" pattern="yyy.MM.dd"/></p>
					<p class="rvwcnt">${list.rvwcnt}</p>
				</div>
				</c:forEach>
				<c:if test="${list.size() < 1}">
					<p>작성된 리뷰가 없습니다</p>
				</c:if>
			</tbody>
	</div>
</div>
	<div  class="btn">
		<c:if test="${user != null}" >
<%-- 		<a href="/review/view?memid=${list.memid}">내 리뷰</a> --%>
			<a href="add">작성</a>
		</c:if>
	</div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>