<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>myRewards</title>
    <link rel="stylesheet" href="css/myRewards.css" />
    <link rel="stylesheet" href="css/pokedexFrameAccount.css" />
  </head>
  <body>
	<div id="pokedex-wrapper">
      <div id="pokedex-red-frame">
        <div id="pokedex-circles">
          <img src="img/pokedex-circles.png" alt="" />
        </div>
        <div id="pokedex-blue-shadow">
          <div id="pokedex-blue-frame">
            <div id="pokedex-title-area">
              <span class="pokedex-title-txt">My<br>Rewards</span>
              <img
                src="img/icon/account-icon/poke-spot.png"
                alt="poke-spot-icon"
                id="poke-spot-icon"
              />
            </div>
            <div id="pokedex-white-bg">
					<div id="r-accounts">
						<div id="r-account-img"><img alt="프로필 이미지" src="img/profile/${account.img }" style="max-width: 90px;"></div>
						<div>${account.name }님의 리워드</div>
					</div>	
					<c:forEach var="pokemon" items="${Pokemons }">
						<div id="r-pokemons">
							<div id="r-pokemon-top">
								<div id="r-pokemon-name">
									<div class="r-name">${pokemon.name }</div>
								</div>
								<div id="r-pokemon-no">
									<div class="r-no">${pokemon.no }</div>
								</div>
							</div>
							<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }"></div>
							<div id="r-pokemon-bottom">
								<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="max-width: 10px;"></div>			
								<div class="r-pokemon-maker">Pokémon</div>
							</div>
						</div>
					</c:forEach>
              </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>