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
			<div class="r-account"><img alt="프로필 이미지" src="img/profile/${account.img }"></div>
			<div class="r-account">${account.name }님의 리워드</div>
		</div>	
	<c:forEach var="pokemon" items="${Pokemons }">
		<div id="r-pokemons">
			<div id="r-pokemon">
				<div id="r-pokemon-name">
					<div class="name">${pokemon.name }</div>
					<div id="r-pokemon-no">
						<div class="no">${pokemon.no }</div>
					</div>
				</div>
				<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }"></div>
				<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="max-width: 10px;"></div>			
				<div class="r-pokemon-bottom">Pokémon</div>
			</div>
		</div>
	</c:forEach>
	</div>
  </body>
</html>
