<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Café</title>
<style>
.main_img img{
	background-size: cover;
}
.section{
	width:1100px;
	height:400px;
	margin:0 auto; 
	margin-top:30px; 
	margin-bottom:30px;
	padding:15px; 
	box-sizing: border-box;
	text-align:center;
}

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="main_img">
		 <img src="/resources/images/tree.png" alt="메인 이미지" width=100%,  height=300px>
    </div>
	<div class="section">
	    <section>
			<div>	

			</div>
	    </section>
    </div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>