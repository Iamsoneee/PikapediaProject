<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>

    <!-- Header Area -->
    <header class="header">
      <div class="header-wrapper">
        <div class="header-logo">
          <a href="HC">
            <img
              src="img/pikapedia-logo.svg"
              alt="pikapedia-logo"
              id="pikapedia-logo"
            />
          </a>
        </div>
        <div class="menu-area">
          <ul class="header-icons">
            <li>
              <a href=""
                ><img
                  src="img/icon/sun-icon-active.png"
                  alt="bright-mode"
                  class="header-icons"
                  id="bright-mode-toggle"
              /></a>
            </li>
            <li>
              <a href="#"
                ><img
                  src="img/icon/moon-icon.svg"
                  alt="dark-mode"
                  class="header-icons"
                  id="dark-mode-toggle"
              /></a>
            </li>
            <li>
              <a href=""
                ><img
                  src="img/icon/korea-icon.png"
                  alt="korean-button"
                  class="header-icons"
              /></a>
            </li>
            <li>
              <a href=""
                ><img
                  src="img/icon/japan-icon.png"
                  alt="japanese-button"
                  class="header-icons"
              /></a>
            </li>
          </ul>
          <!-- Dropdown Menu -->
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
            <a href="" class="drop-icon-area"
            ><img class="drop-icon-img" src="img/icon/list-icon.png" alt=""
          /></a>
         </div>
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
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/validCheck.js"></script>
	<script type="text/javascript" src="js/valueCheck.js"></script>
	<script type="text/javascript" src="js/mypage.js"></script>
  </body>

</html>
