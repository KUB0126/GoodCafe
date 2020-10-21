<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰등록</title>
<style>
.section{
	width:1100px;
	margin:0 auto; 
	margin-top:140px; 
	margin-bottom:40px;
	padding-top:15px;
	padding-bottom:30px; 
	box-sizing: border-box;
}
.section h2{
	text-align:left;
	font-size: 24px;
}
.section .content {
    border-collapse: separate;
    height:380px;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #444444;
    border-bottom: 1px solid #444444;
    margin: 20px 10px;
}

.content dl{
	width: 100%;
}

.section .content dt { 
     padding: 5px; 
} 
/*  .section .content dd input{  */
/*      width: 100%;  */
/*      padding: 5px;  */
/*  }  */
 .section .content dd textarea{ 
     width: 100%; 
     padding: 5px; 
     height: 200px;
 } 
.section .btn{
	height:50px;
	float: right;
}
.section .btn input{
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
		<h2>NEW 리뷰등록</h2>
		<section>
		<form method="post" enctype="multipart/form-data">
			<div class="content">
				<dl>
					<dt>내용</dt>
					<dd><textarea name="rvwcontent"></textarea></dd>
					<dt>작성자</dt>
					<dd><input type="text" name="memid" value="${user.memid}" readonly="readonly"></dd>
					<dt for="image">이미지</dt>
					<dd><input type="file" name="uploadFile"></dd>
				</dl>
			</div>
			<div class="btn">
				<input type="submit" value="등록">
			</div>			
		</form>
		</section>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>