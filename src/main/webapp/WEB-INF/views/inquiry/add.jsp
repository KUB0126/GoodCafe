<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.section{
	width:1100px;
	margin:0 auto; 
	margin-top:140px; 
	margin-bottom:40px;
	padding-top:15px;
	padding-bottom:30px; 
	box-sizing: border-box;
	text-align:center;
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
/*      width: 100%;  */
     padding: 5px; 
/*      font-weight: bold;  */
} 
 .section .content dd input{ 
     width: 100%; 
     padding: 5px; 
/*      vertical-align: top;  */
 } 
 .section .content dd textarea{ 
     width: 100%; 
     padding: 5px; 
     height: 200px;
/*      vertical-align: top;  */
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
		<h2>NEW 문의사항</h2>
		<section> 
		<form method="post">
			<div class="content">
				<dl>
					<dt>제목</dt>
					<dd><input type="text" name="inqtitle"></dd>
					<dt>내용</dt>
					<dd><textarea name="inqcontent"></textarea></dd>
					<dt>작성자</dt>
					<dd><input type="text" name="inqwriter" value="${user.memid}" readonly="readonly"></dd>
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