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
		<div id="r-pokemons">
			<div id="r-pokemon">
				<div id="r-pokemon-name">
					<div class="name">이상해씨</div>
					<div id="r-pokemon-no">
						<div class="no">001</div>
					</div>
				</div>
				<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"></div>
				<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="max-width: 10px;"></div>			
				<div class="r-pokemon-bottom">Pokémon</div>
			</div>
		</div>
	</div>
	<c:forEach var="pokemon" items="${Pokemons }">
		<div class="name">${pokemon.name }</div>
		<div class="no">${pokemon.no }</div>
		<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }"></div>
	</c:forEach>
  </body>
</html>
