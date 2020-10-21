<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보</title>
</head>
<body>
	<div>
		<h3>상품정보</h3>
		<form method="post" enctype="multipart/form-data">
			<div>
				<label>상품분류:</label>
				<select name="gdsdivision" value="${item.gdsdivision}">
					<option value="coffee">커피</option>
					<option value="drink">음료</option>
					<option value="dessert">디저트</option>
				</select>
			</div>
			<div>
				<label>상품명:</label>
				<input type="text" name="gdsname" value="${item.gdsname}">
			</div>
			<div>
				<label>상품가격:</label>
				<input type="number" name="gdsprice" value="${item.gdsprice}">
			</div>
			<div>
				<label for="image">상품이미지:</label>
				<input type="file" name="uploadFile">
			</div>

			<div>
				<input type="submit" value="수정">
			</div>			
		</form>
	</div>
</body>
</html>