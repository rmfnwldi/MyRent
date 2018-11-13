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
	<form action="#" method="post" class="form-signin" >
		<br>
		<h1>회 원 가 입</h1>
		<br>
		<input type="text" id="inputID" class="form-control" placeholder="아이디" required autofocus>
		<input type="text" id="name" class="form-control" placeholder="이름" required >
		<input type="password" id="inputPW" class="form-control" placeholder="비밀번호" required>
		<input type="password" id="PWcheck" class="form-control" placeholder="비밀번호 확인" required>
		<input type="tel" id="tel" class="form-control" placeholder="연락처" required >
		<input type="text" id="team" class="form-control" placeholder="소속" required >
		<input type="date" id="date" class="form-control" placeholder="생년월일" required >
		<button class="btn btn-lg btn-primary btn-block" type="submit">가입</button>
		<a href="pagelogin.jsp" style="color: black;">가입취소</a>
	</form>
</body>
</html>
