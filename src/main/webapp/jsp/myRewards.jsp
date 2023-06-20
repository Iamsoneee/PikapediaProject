<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/myRewards.css" />
  </head>
  <body>
    <h1>
      My <br />
      Rewards
    </h1>
    <div id="rewards">
		<div>
			<div class="r-account"><img alt="프로필 이미지" src="img/profile/ball3.png"></div>
			<div class="r-account">jp님의 리워드</div>
		</div>
		<!-- <c:forEach var="pokemon" items="${Pokemons }"> -->
		<!-- </c:forEach> -->
		<div id="r-pokemons">
			<div class="r-pokemon">001</div>
			<div class="r-pokemon">이상해씨</div>
			<div class="r-pokemon"><img alt="포켓몬 이미지" src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png" style="max-width: 100px;"></div>
			<div class="r-pokemon"></div>			
			<div class="r-pokemon"></div>			
		</div>
	</div>
  </body>
</html>
