<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
	<div>
		<h1>회원등록</h1>
		<form method="post">
		
			<div>
				<label>아이디:</label>
				<input type="text" name="memid">
			</div>
			<div>
				<label>비밀번호:</label>
				<input type="password" name="password">
			</div>
			<div>
				<label>이름:</label>
				<input type="text" name="name">
			</div>
			<div>
				<label>전화번호:</label>
				<input type="text" name="phone">
			</div>
			<div>
				<label>이메일:</label>
				<input type="text" name="email">
			</div>
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>