<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>pokemonMain</title>
<link rel="stylesheet" href="css/pokemonMain.css" />
</head>
<body>
	<div id="main-page-wrapper">
		<!-- Pokemon Type Buttons -->
		<div class="type-icons-wrapper">
			<div class="type-icons" class="type-icons-first-row">
				<button name="normal">
					<img src="img/pokemon-type/circle-type/normal.png"
						alt="normal-type" />
				</button>
				<button name="fire">
					<img src="img/pokemon-type/circle-type/fire.png" alt="fire-type" />
				</button>
				<button name="water">
					<img src="img/pokemon-type/circle-type/water.png" alt="water-type" />
				</button>
			</div>

			<div class="type-icons" class="type-icons-first-row">
				<button name="grass">
					<img src="img/pokemon-type/circle-type/grass.png" alt="grass-type" />
				</button>
				<button name="electric">
					<img src="img/pokemon-type/circle-type/electric.png"
						alt="electric-type" />
				</button>
				<button name="ice">
					<img src="img/pokemon-type/circle-type/ice.png" alt="ice-type" />
				</button>
			</div>

			<div class="type-icons" class="type-icons-first-row">
				<button name="fight">
					<img src="img/pokemon-type/circle-type/fight.png" alt="fight-type" />
				</button>
				<button name="poison">
					<img src="img/pokemon-type/circle-type/poison.png"
						alt="poison-type" />
				</button>
				<button name="ground">
					<img src="img/pokemon-type/circle-type/ground.png"
						alt="ground-type" />
				</button>
			</div>
		</div>

		<div class="type-icons-wrapper">
			<div class="type-icons" class="type-icons-second-row">
				<button name="flying">
					<img src="img/pokemon-type/circle-type/flying.png"
						alt="flying-type" />
				</button>
				<button name="psychic">
					<img src="img/pokemon-type/circle-type/psychic.png"
						alt="psychic-type" />
				</button>
				<button name="bug">
					<img src="img/pokemon-type/circle-type/bug.png" alt="bug-type" />
				</button>
			</div>

			<div class="type-icons" class="type-icons-second-row">
				<button name="rock">
					<img src="img/pokemon-type/circle-type/rock.png" alt="rock-type" />
				</button>
				<button name="ghost">
					<img src="img/pokemon-type/circle-type/ghost.png" alt="ghost-type" />
				</button>
				<button name="dragon">
					<img src="img/pokemon-type/circle-type/dragon.png"
						alt="dragon-type" />
				</button>
			</div>

			<div class="type-icons" class="type-icons-second-row">
				<button name="dark">
					<img src="img/pokemon-type/circle-type/dark.png" alt="dark-type" />
				</button>
				<button name="steel">
					<img src="img/pokemon-type/circle-type/steel.png" alt="steel-type" />
				</button>
				<button name="fairy">
					<img src="img/pokemon-type/circle-type/fairy.png" alt="fairy-type" />
				</button>
			</div>
		</div>

		<!-- Search Bar -->
		<div class="search-bar-area">
			<input type="text" id="search-input"
			placeholder="포켓몬의 이름 또는 도감 번호를 입력하세요" maxlength="10" /> <img
			src="img/icon/magnifier-icon.png" alt="magnifier-icon"
			id="magnifier-icon" />
		</div>

		<!-- Pokemon Cards Gallery -->
		<div class="scrollable">

			<c:forEach var="pokemon" items="${Pokemons }">
				<a href="">
					<div class="pokemon-card">
						<div class="card-white-bg">
							<div class="card-contents">
								<p>#${pokemon.no }</p>
								<img src="${pokemon.frontDefault }" alt="${pokemon.name }"
									class="card-pokemon-img" />
								<hr class="horizontal-line" />
								<p>${pokemon.name }</p>
								<div class="type-icons-area">
									<img src="img/pokemon-type/circle-type/${pokemon.type1}.png"
										alt="${pokemon.type1}" class="card-type-icon" />
									<c:if test="${not empty pokemon.type2}">
										<img src="img/pokemon-type/circle-type/${pokemon.type2}.png"
											alt="${pokemon.type2}" class="card-type-icon" />
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>

		</div>
	</div>
</body>
</html>
