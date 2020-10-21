<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"> 
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div id="contents">
	<section>
	<h1>로그인</h1>
	<div class="box_login">
			<h3>Welcome! <p>Good Café</p>에 오신 것을 환영합니다.</h3>
			
			<form method="post">
				<fieldset>
				<div class="form_box">
					<div>
						<input name="memid" type="text" placeholder="아이디를 입력해 주세요"> 
					</div>
					<div>
						<input name="password" type="password" placeholder="비밀번호를 입력해 주세요"> 
					</div>
					<div>
						<input type="submit" value="로그인">
					</div>
				 </div>
				</fieldset>
			</form>
	</div>
	</section>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>