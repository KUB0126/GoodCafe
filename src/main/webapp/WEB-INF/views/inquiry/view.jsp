<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
.container {
	width: 1100px;
	height: 600px;
	margin: 0 auto;
	margin-top: 140px;
	margin-bottom: 30px;
	padding: 15px;
	box-sizing: border-box;
}

.container h2 {
	text-align: left;
	font-size: 24px;
	padding-bottom: 10px;
}
.container #section{
	background-color: bule;
	height:auto;
	
}
#section .view_tit {
	display: block;
	padding: 10px 0;
	margin-bottom: 10px;
	height: 30px;
	border-bottom: 1px solid #333333;
}

#section .view_tit h3 {
	font-size: 18px;
	float: left;
}

#section .view_tit li {
	float: right;
	margin-left: 10px;
}

#section .view_content {
	padding: 30px 10px;
	width: 100%;
	height: 120px;
	box-sizing: border-box;
}
.container .btn{
	margin: 0 auto;
	height: 40px;
	box-sizing: border-box;
	border-bottom: 1px solid #333333;
}
.container .btn .btn_sub a {
	float: right;
	padding: 5px 15px;
	font-size: 16px;
	border: 1px solid #333333; 
}

.container .cmnt_add{
	width: 100%;
	height: 50px;
	margin:20px 0px;
}
.container .cmnt_add #cmntext{
	margin:0 auto;
	width:90%;
	height:48px;
	float: left;
}
.container .cmnt_add #commentAddBtn{
	float: right;
	padding:15px 30px;
	font-size: 16px;
	border: 1px solid #333333; 
}
.container .cmnt_list{
	height:75px;
	padding: 5px 0px 5px 20px;
	/* background: rgb(239, 247, 235); */
	background: #efefef;
	border-bottom: 1px solid gray;
}
.container .cmnt_list .info{
	float: left;
	width:90%; 
}
.container .cmnt_list #writer{
	clear:both;
	color: green;
	font-size: 14px;
}
.container .cmnt_list #cmntext{
	margin: 3px 0px;
	font-weight: bold;
}
.container .cmnt_list #cmndate{
	color: gray;
	font-size: 14px;
}
.container .cmnt_list #delete_btn{
	display:none;
	text-align:center;
	float: right;
	/* margin-top:45px; */
	margin-right:10px;
	width:4%; 
	border: 0.5px solid gray;
}
.container .cmnt_list .menu-toggle-btn{
	float:right;
	padding-right:5px;
	cursor:pointer;
}
</style>

<script>
$(function() {
	
	//댓글 추가 View
	$("#commentAddBtn").on("click", function(){
		  var formObj = $("form[name='commentForm']");
		  formObj.attr("action", "/inquiry/commentAdd");
		  formObj.submit();
		});
	
	 $(".menu-toggle-btn").click(function(){
	        $(this).parent().find("#delete_btn").slideToggle("fast");
	    });
	
});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container">
		<div>
			<h2>문의사항</h2>
		</div>
		<hr />
		<section id="section">
			<form role="form" method="post">
				<tbody>
					<div class="view_tit">
						<h3>${view.inqtitle}</h3>
						<ul>
							<li>문의자 ${view.inqwriter}</li>
							<li><fmt:formatDate value="${view.inqdate}"
									pattern="yyyy-MM-dd HH:mm" /></li>
						</ul>
					</div>
					<div class="view_content">
						<p>${view.inqcontent}</p>
					</div>
				</tbody>
			</form>
		</section>
		<div class="btn">
<!-- 			<div class="btn_list"> -->
<%-- 				<a href="${pageContext.request.contextPath}/inquiry/list">목록</a> --%>
<!-- 			</div> -->
			<c:if test="${sessionScope.user.memid eq view.inqwriter}">
				<div class="btn_sub">
					<a href="/inquiry/delete?inqno=${view.inqno}">삭제</a> 
					<a href="/inquiry/update?inqno=${view.inqno}">수정</a>
				</div>
			</c:if>
		</div>

		<!-- 댓글추가 -->
		<div class="cmnt_add"> 
		<form name="commentForm" method="post">
			<input type="hidden" id="inqno" name="inqno" value="${view.inqno}"/>
			<div>
			 	<input type="hidden" id="writer" name="writer" value="${user.memid}" readonly />
				<input type="text" id="cmntext" name="cmntext" placeholder="댓글을 입력하세요."/>
			</div>
		</form>
			<div>
				<button type="button" id="commentAddBtn">등록</button>
			</div>
		</div>
		
		<!-- 댓글목록 -->
	<c:forEach items="${commentList}" var="commentList">
		<div class="cmnt_list">
				<div class="info">
					<input type="hidden" id="inqno" name="inqno" value="${view.inqno}"/>
					<div id="writer">${commentList.writer}</div> 
					<div id="cmntext">${commentList.cmntext}</div>
					<div id="cmndate"><fmt:formatDate value="${commentList.cmndate}" pattern="yyyy.MM.dd" /></div>
				</div>
				<div>
					<div class="menu-toggle-btn"><img src="/resources/images/button_icon.png" width="15px" height="15px" alt="menu"></div>
					<c:if test="${sessionScope.user.memid eq commentList.writer}">
					<div id="delete_btn"><a href="/inquiry/commentDelete?cmnno=${commentList.cmnno}">삭제</a></div>
					</c:if>
				</div>
		</div>
	</c:forEach>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>