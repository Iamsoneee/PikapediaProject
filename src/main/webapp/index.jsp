<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>index</title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/index.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
	rel="stylesheet" />
</head>
<body>
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
					<li><a href=""><img src="img/icon/sun-icon.png"
							alt="bright-mode" class="header-icons" /></a></li>
					<li><a href="#"><img src="img/icon/moon-icon.svg"
							alt="dark-mode" class="header-icons" id="dark-mode-toggle" /></a></li>
					<li><a href=""><img src="img/icon/korea-icon.png"
							alt="korean-button" class="header-icons" /></a></li>
					<li><a href=""><img src="img/icon/japan-icon.png"
							alt="japanese-button" class="header-icons" /></a></li>
				</ul>
				<!-- Dropdown Menu -->
				<ul class="drop-menu">
					<li><a href="GameHomeC">Quiz</a></li>
					<li><a href="MyRewardC">My Rewards</a></li>
					<li><a href="CommunityC">Community</a></li>
					<li><a href="LoginC">Login</a></li>
					<li><a href="JoinAccountC">Join</a></li>
				</ul>
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
	<script type="text/javascript" src="js/index.js">
	
	</script>
</body>
</html>
