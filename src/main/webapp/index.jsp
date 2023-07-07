<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pikapedia</title>
<link rel="icon" href="img/pikachu-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/index.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
	rel="stylesheet" />

</head>
<body>
	<!-- 모바일버전 offcanvas 효과를 위한 main div -->
	<div id="main">
		<!-- Header Area -->
		<header class="header">
			<div class="header-wrapper">
				<div class="header-logo">
					<a href="HC"> <img src="img/pikapedia-logo.svg"
						alt="pikapedia-logo" id="pikapedia-logo" />
					</a>
				</div>
				<div class="menu-area">
					<ul class="header-icons">

						<li>
							<div id="dark-mode-bg">
								<a href=""><img src="img/icon/sun-icon-active.png"
									alt="bright-mode" class="header-icons dark-mode-icons-gap"
									id="bright-mode-toggle" /></a> <a href=""><img
									src="img/icon/moon-icon.svg" alt="dark-mode"
									class="header-icons dark-mode-icons-gap" id="dark-mode-toggle" /></a>
							</div>
						</li>

						<li><a href="TranslationC?lang=kr"><img
								src="img/icon/korea-icon.png" alt="korean-button"
								class="header-icons" /></a></li>
						<li><a href="TranslationC?lang=en"><img
								src="img/icon/us-icon.png" alt="english-button"
								class="header-icons" /></a></li>
						<li><a href="TranslationC?lang=jp"> <img
								src="img/icon/japan-icon.png" alt="japanese-button"
								class="header-icons" /></a></li>
					</ul>
					<div class="drop-menu-wrapper">
						<ul class="drop-menu" style="max-height: 0px">
							<li><a href="GameHomeC">Game</a></li>
							<li><a href="MyRewardC?id=${account.id }">MyRewards</a></li>
							<li><a href="CommunityC">Community</a></li>
							<c:choose>
								<c:when test="${empty account.id }">
									<li><a href="LoginC">Login</a></li>
									<li><a href="SignupC">Signup</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="LogoutC">Logout</a></li>
									<li><a href="MyPageC">Mypage</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						<img onclick="openNav()" class="drop-icon-img"
							src="img/icon/list-icon.png" alt="menu-icon" />
					</div>
					<!-- OffCanvas Menu -->
					<div id="mySidenav" class="sidenav">
						<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
						<a href="GameHomeC">Game</a> <a href="MyRewardC?id=${account.id }">MyRewards</a>
						<a href="CommunityC">Community</a>
						<c:choose>
							<c:when test="${empty account.id }">
								<a href="LoginC">Login</a>
								<a href="SignupC">Signup</a>
							</c:when>
							<c:otherwise>
								<a href="LogoutC">Logout</a>
								<a href="MyPageC">Mypage</a>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- Dropdown Menu -->
					<!-- 
					<div class="drop-menu-wrapper">
						<ul class="drop-menu" style="max-height: 0px">
							<li><a href="GameHomeC">Quiz</a></li>
							<li><a href="MyRewardC?id=${account.id }">MyRewards</a></li>
							<li><a href="CommunityC">Community</a></li>
							<c:choose>
								<c:when test="${empty account.id }">
									<li><a href="LoginC">Login</a></li>
									<li><a href="SignupC">Signup</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="LogoutC">Logout</a></li>
									<li><a href="MyPageC">Mypage</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						<a href="" class="drop-icon-area"><img class="drop-icon-img"
							src="img/icon/list-icon.png" alt="" /></a>
					</div>
					 -->
				</div>
			</div>
		</header>

		<!-- Article Area -->
		<article class="article">
			<div class="pokemon-main">
				<div class="bg-text">
					<div id="pikapedia-bg-text">PIKAPEDIA</div>
				</div>
				<jsp:include page="${contentPage }"></jsp:include>
			</div>
		</article>

		<!-- Footer Area -->
		<footer class="footer">© 2023 Pikapedia. All rights reserved.</footer>
	</div>

	<script type="text/javascript" src="js/pokemonMain.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/password.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>
</body>

</html>
