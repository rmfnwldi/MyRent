<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/pagejoin.css">
</head>
<body class="text-center" oncontextmenu="return false" ondragstart="return false" onselect="return false">
	<form action="#" method="post" class="form-signin">
		<br>
		<a href="main.jsp"><img id="logo" src="image/logoeng.PNG"></a>
		<div class="joindiv"><b>아이디</b></div>
		<input type="text" id="inputID" class="form-control" placeholder="아이디" required autofocus>
		<div class="joindiv"><b>이름</b></div>
		<input type="text" id="name" class="form-control" placeholder="이름" required >
		<div class="joindiv"><b>비밀번호</b></div>
		<input type="password" id="inputPW" class="form-control" placeholder="비밀번호" required>
		<div class="joindiv"><b>비밀번호 확인</b></div>
		<input type="password" id="PWcheck" class="form-control" placeholder="비밀번호 확인" required>
		<div class="joindiv"><b>연락처</b></div>
		<input type="tel" id="tel" class="form-control" placeholder="연락처" required >
		<div class="joindiv"><b>소속</b></div>
		<input type="text" id="team" class="form-control" placeholder="소속" required >
		<div class="joindiv"><b>생년월일</b></div>
		<input type="date" id="date" class="form-control" placeholder="생년월일" required>
		<br>
		<button class="btn btn-lg btn-primary btn-block" type="submit">가입</button>
		<a href="pagelogin.jsp" style="color: black;">가입취소</a>
	</form>
</body>
</html>
