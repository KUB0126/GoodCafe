<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<style>
#section{
	margin: 0 auto;
	padding:20px;
	margin-top:140px;
	width: 1100px;
	height: 500px;
}
#section .info{
	
}
</style>
</head>
<body>
<header>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
</header>

<section id="section">
	<h1>정보수정</h1>
	<div>
		<form method="post">
			<div class="info">
				<label>아이디:</label>
				<input type="text" name="memid" value="${item.memid}">
			</div>
			<div>
				<label>비밀번호:</label>
				<input type="password" name="password" value="${item.password}">
			</div>
			<div>
				<label>이름:</label>
				<input type="text" name="name" value="${item.name}">
			</div>
			<div>
				<label>전화번호:</label>
				<input type="text" name="phone" value="${item.phone}">
			</div>
			<div>
				<label>이메일:</label>
				<input type="text" name="email" value="${item.email}">
			</div>
			<div>
				<input type="submit" value="수정">
			</div>			
		</form>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>