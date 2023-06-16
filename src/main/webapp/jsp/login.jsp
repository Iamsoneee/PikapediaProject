<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Page</h1>
	<form action="LoginC" method="post">
			ID <input name="id">
			PW <input name="pw" type="password">
			<button>로그인</button>
			<button type="button" onclick="location.href='JoinAccountC'">회원가입</button>
		</form>
</body>
</html>