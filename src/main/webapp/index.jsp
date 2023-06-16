<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/index.css" />
  </head>
  <body>
    <!-- Header Area -->
    <header class="header">
      <div class="header-logo">
        <a href="">
          <img
            src="img/pikapedia-logo.svg"
            alt="pikapedia-logo"
            id="pikapedia-logo"
          />
        </a>
      </div>
      <ul class="header-icons">
        <a href=""
          ><img
            src="img/icon/sun-icon.png"
            alt="bright-mode"
            class="header-icons"
        /></a>
        <a href=""
          ><img
            src="img/icon/moon-icon.png"
            alt="dark-mode"
            class="header-icons"
        /></a>
        <a href=""
          ><img
            src="img/icon/korea-icon.svg"
            alt="korean-button"
            class="header-icons"
        /></a>
        <a href=""
          ><img
            src="img/icon/japan-icon.svg"
            alt="japanese-button"
            class="header-icons"
        /></a>
      </ul>
      <ul class="drop-menu">
        <li><a href="./jsp/quizHome.jsp">Quiz</a></li>
        <li><a href="myRewardsC">My Rewards</a></li>
        <li><a href="./jsp/community.jsp">Community</a></li>
        <li><a href="loginC">Login</a></li>
        <li><a href="./jsp/join.jsp">Join</a></li>
      </ul>
    </header>

    <!-- Article Area -->
    <article>
      <div class="pokemon-main">
        <jsp:include page="${contentPage }"></jsp:include>
      </div>
    </article>

    <!-- Footer Area -->
    <footer>footer area</footer>
  </body>
</html>
