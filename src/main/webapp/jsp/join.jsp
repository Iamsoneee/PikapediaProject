<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/join.css">
<body>
<<<<<<< HEAD
	<h1>Join Page</h1>
	<form action="JoinAccountC" method="post" name="join" onsubmit="return call();">
		<div class="container">
			<div class="items">
				<div class="item1">Name</div>
				<div class="item2">
					<input name="name" placeholder="필수"  class="textInput">
				</div>
			</div>
			<div class="items">
				<div class="item1">ID</div>
				<div class="item2">
					<input name="id" placeholder="한글x, 3글자 이상" class="textInput">
				</div>
			</div>
			<div class="items">
				<div class="item1">PW</div>
				<div class="item2">
					<input name="pw1" placeholder="3자 이상, 소문자, 숫자" class="textInput">
				</div>
			</div>
			<div class="items">
				<div class="item1">PW confirm</div>
				<div class="item2">
					<input name="pw2" placeholder="재확인"  class="textInput">
				</div>
			</div>
			<div class="items">
				<div class="item1">email</div>
				<div class="item2">
					<input name="email1" class="textInput">
					@
					<select name="email2">
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</div>
			</div>
			<div class="items item3">
				<div class="button">
					<button>sign up</button>
				</div>
			</div>
		</div>
	</form>
=======
	<div class="signup-outer">
		<div class="signup-container">
			<div>
				<div>
					<img class="signup-input-img" src="../img/icon/account-icon/profile-user1.png">
					<input class="signup-input-btn" type="text" placeholder="Name">
				</div>
				<div>
					<img class="signup-input-img" src="../img/icon/account-icon/profile-user2.png">
					<input class="signup-input-btn" type="text" placeholder="User Name">
				</div>
				<div>
					<img class="signup-input-img" src="../img/icon/account-icon/pw.png">
					<input class="signup-input-btn" type="text" placeholder="PW">
				</div>
				<div>
					<img class="signup-input-img" src="../img/icon/account-icon/pw-confirm.png">
					<input class="signup-input-btn" type="text" placeholder="PW Confirm">
				</div>
				<div>
					<img class="signup-input-img" src="../img/icon/account-icon/email.png">
					<input class="signup-input-btn" type="text" placeholder="Email">
				</div>
				<div class="signup-btn">Sign Up</div>
				<div class="signup-des">Or Sign Up With</div>
				<div class="google-btn"><img class="signup-input-img" alt="구글 로고" src="../img/icon/account-icon/google-icon.png"></div>
			</div>
		</div>
	</div>
>>>>>>> 1fe103b62c8a851ebb2e2a4a373563287620d3fc
</body>
</html>