<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>myRewards</title>
    <link rel="stylesheet" href="css/myRewards.css"/>
    <link rel="stylesheet" href="css/pokedexFrameAccount.css"/>
    <script type="text/javascript" src="js/myRewards.js"></script>
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
					<div class="r-account">
					<c:choose>
						<c:when test="${empty account.img }">
						<div id="r-account-img"><img alt="프로필 이미지" src="img/icon/account-icon/profile-user1.png" style="width: 100px; margin-top: 35px; margin-left: 1vh;"></div>						
						</c:when>
						<c:otherwise>
						<div id="r-account-img"><img alt="프로필 이미지" src="img/profile/${account.img }"></div>
						</c:otherwise>
					</c:choose>
					</div>
						<c:choose>
							<c:when test="${empty account.id }">
								<div class="r-account">???</div>
								<div class="r-account">'s Rewards</div>
								<div class="r-account">:</div>
							</c:when>
							<c:otherwise>
								<div class="r-account">${account.name }</div>
								<div class="r-account">'s Rewards</div>
								<div class="r-account">:</div>
							</c:otherwise>
						</c:choose>
							<c:choose>
								<c:when test="">${RewardCount == null || RewardCount == 0 }
									<div class="r-account">0</div>
								</c:when>
								<c:otherwise>
									<div class="r-account">${RewardCount }</div>
								</c:otherwise>
							</c:choose>
							<div class="r-account">/151</div>
				</div>	
				<c:choose>
					<c:when test="${empty account || RewardCount == 0}">
					<div class="scrollable">
						<div id="r-pokemons">
								<div id="r-pokemon">
									<div id="r-pokemon-top">
										<div id="r-pokemon-name">
											<div class="r-name"></div>
										</div>
										<div id="r-pokemon-no">
											<div class="r-no">000</div>
										</div>
									</div>
									<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://w7.pngwing.com/pngs/197/883/png-transparent-question-mark-question-mark-miscellaneous-angle-text.png" style="width: 100px;"></div>
									<div id="r-pokemon-bottom">
										<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
										<div class="r-pokemon-maker">Pokémon</div>
									</div>
								</div>
							</div>
							<div id="r-pokemons">
								<div id="r-pokemon">
									<div id="r-pokemon-top">
										<div id="r-pokemon-name">
											<div class="r-name"></div>
										</div>
										<div id="r-pokemon-no">
											<div class="r-no">000</div>
										</div>
									</div>
									<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://w7.pngwing.com/pngs/197/883/png-transparent-question-mark-question-mark-miscellaneous-angle-text.png" style="width: 100px;"></div>
									<div id="r-pokemon-bottom">
										<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
										<div class="r-pokemon-maker">Pokémon</div>
									</div>
								</div>
							</div>
							<div id="r-pokemons">
								<div id="r-pokemon">
									<div id="r-pokemon-top">
										<div id="r-pokemon-name">
											<div class="r-name"></div>
										</div>
										<div id="r-pokemon-no">
											<div class="r-no">000</div>
										</div>
									</div>
									<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://w7.pngwing.com/pngs/197/883/png-transparent-question-mark-question-mark-miscellaneous-angle-text.png" style="width: 100px;"></div>
									<div id="r-pokemon-bottom">
										<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
										<div class="r-pokemon-maker">Pokémon</div>
									</div>
								</div>
							</div>
							<div id="r-pokemons">
								<div id="r-pokemon">
									<div id="r-pokemon-top">
										<div id="r-pokemon-name">
											<div class="r-name"></div>
										</div>
										<div id="r-pokemon-no">
											<div class="r-no">000</div>
										</div>
									</div>
									<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://w7.pngwing.com/pngs/197/883/png-transparent-question-mark-question-mark-miscellaneous-angle-text.png" style="width: 100px;"></div>
									<div id="r-pokemon-bottom">
										<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
										<div class="r-pokemon-maker">Pokémon</div>
									</div>
								</div>
							</div>
							<div id="r-pokemons">
								<div id="r-pokemon">
									<div id="r-pokemon-top">
										<div id="r-pokemon-name">
											<div class="r-name"></div>
										</div>
										<div id="r-pokemon-no">
											<div class="r-no">000</div>
										</div>
									</div>
									<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="https://w7.pngwing.com/pngs/197/883/png-transparent-question-mark-question-mark-miscellaneous-angle-text.png" style="width: 100px;"></div>
									<div id="r-pokemon-bottom">
										<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
										<div class="r-pokemon-maker">Pokémon</div>
									</div>
								</div>
							</div>
						</div>	
					</c:when>
					<c:otherwise>
						<div class="scrollable">
				 			<c:forEach var="pokemon" items="${Pokemons }">
								<div id="r-pokemons">
									<div id="r-pokemon">
										<div id="r-pokemon-top">
											<div id="r-pokemon-name">
												<div class="r-name">${pokemon.name }</div>
											</div>
											<div id="r-pokemon-no">
												<div class="r-no">${pokemon.no }</div>
											</div>
										</div>
										<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }" style="width: 100px;"></div>
										<div id="r-pokemon-bottom">
											<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
											<div class="r-pokemon-maker">Pokémon</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>	
					</c:otherwise>
				</c:choose>
          </div>
        </div>
      </div>
    </div>
   </div>
  </body>
</html>
<%-- 	          <c:forEach var="pokemon" items="${Pokemons }">
								<div id="r-pokemons">
									<div id="r-pokemon">
										<div id="r-pokemon-top">
											<div id="r-pokemon-name">
												<div class="r-name">${pokemon.name }</div>
											</div>
											<div id="r-pokemon-no">
												<div class="r-no">${pokemon.no }</div>
											</div>
										</div>
										<div class="r-pokemon-img"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }" style="width: 100px;"></div>
										<div id="r-pokemon-bottom">
											<div class="r-pokemon-ball"><img alt="" src="img/icon/account-icon/ball-bg.png" style="width: 10px;"></div>			
											<div class="r-pokemon-maker">Pokémon</div>
										</div>
									</div>
								</div>
							</c:forEach> --%>

