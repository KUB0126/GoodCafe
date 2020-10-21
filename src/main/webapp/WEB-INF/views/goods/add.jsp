<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<body>
	<div>
		<h1>상품등록</h1>
		<form method="post" enctype="multipart/form-data">
		
			<div>
				<label>상품분류 </label>
				<select name="gdsdivision">
					<option value="coffee">coffee</option>
					<option value="drink">drink</option>
					<option value="dessert">dessert</option>
				</select>
			</div>
			<div>
				<label>상품명 </label>
				<input type="text" name="gdsname">
			</div>
			<div>
				<label>상품가격 </label>
				<input type="price" name="gdsprice">
			</div>
			<div>
				<label>상품이미지 </label>
				<input type="file" name="uploadFile">
			</div>
<!-- 			<div> -->
<!-- 				<label>상품설명 </label> -->
<!-- 				<textarea name="gdsmemo" cols="60" rows="5"></textarea> -->
<!-- 			</div> -->
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>