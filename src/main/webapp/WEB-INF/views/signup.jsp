<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css">
<script>
	function checkID() {
		let form = document.getElementById("form");
		
		let xhr = new XMLHttpRequest();
		
		xhr.open("GET","checkID?id=" + form.memid.value, false); 
		xhr.send();
		
		let result = xhr.responseText;
		
		
		if(result =="OK"){
			alert("사용 가능한 아이디 입니다.");
			
			form.checkID.value = form.memid.value;
		}else
			alert("사용할 수 없는 아이디 입니다.");
	}
	
	function submit() {
		let form = document.getElementById("form");
		
		if(form.checkID.value != form.memid.value){
			alert("중복검사를 해주세요.");
			return;
		}
		
		if(form.memid.value == ""){
			alert("아이디를 입력해주세요.");
			form.memid.focus();
			return;
		}
		if(form.password.value == ""){
			alert("비밀번호를 입력해주세요.");
			form.password.focus();
			return;
		}
		if(form.name.value == ""){
			alert("이름을 입력해주세요.");
			form.name.focus();
			return;
		}

		form.submit();
	}
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
<div id="contents">
	<section>
	<h1>회원가입</h1>
	<div class="box_signup">
		<h3>Welcome! <p>Good Café</p>에 오신 것을 환영합니다.</h3>
		
		<form method="post" id="form">
			<div class="form_box">
					<input name="checkID" type="hidden" value="0">
					<div class="signupid">
						<input type="text" name="memid" placeholder="아이디를 입력해 주세요"> <p><a href="javascript:checkID()" style="color: #fff">중복검사</a></p>
					</div>
				<div class="form_box2">
					<div>
						<input type="password" name="password" placeholder="비밀번호를 입력해 주세요">
					</div>
					<div>
						<input type="text" name="name" placeholder="이름을 입력해 주세요">
					</div>
					<div>
						<input type="text" name="phone" placeholder="전화번호를 입력해 주세요(선택입력 )">
					</div>
					<div>
						<input type="text" name="email" placeholder="이메일을 입력해 주세요(선택입력 )">
					</div>
				</div>
			</div>
		</form>
				<div class="form_box3">
					<button onclick="submit()">회원가입</button>
				</div>			
	</div>
	</section>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>