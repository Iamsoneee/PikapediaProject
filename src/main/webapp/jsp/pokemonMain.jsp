<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>pokemonMain</title>
<link rel="stylesheet" href="css/pokemonMain.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
.pokemon-card {
	border: 5px solid transparent;
}
</style>
</head>
<body>
	<div id="main-page-wrapper">
		<!-- Pokemon Type Buttons -->
		<div class="type-icons-wrapper">
			<div class="type-icons type-icons-first-row">
				<button name="normal"
					onclick="location.href='TypeViewC?type=Normal'">
					<img src="img/pokemon-type/circle-type/normal.png"
						alt="normal-type" />
				</button>
				<button name="fire" onclick="location.href='TypeViewC?type=Fire'">
					<img src="img/pokemon-type/circle-type/fire.png" alt="fire-type" />
				</button>
				<button name="water" onclick="location.href='TypeViewC?type=Water'">
					<img src="img/pokemon-type/circle-type/water.png" alt="water-type" />
				</button>
			</div>

			<div class="type-icons type-icons-first-row">
				<button name="grass" onclick="location.href='TypeViewC?type=Grass'">
					<img src="img/pokemon-type/circle-type/grass.png" alt="grass-type" />
				</button>
				<button name="electric"
					onclick="location.href='TypeViewC?type=Electric'">
					<img src="img/pokemon-type/circle-type/electric.png"
						alt="electric-type" />
				</button>
				<button name="ice" onclick="location.href='TypeViewC?type=Ice'">
					<img src="img/pokemon-type/circle-type/ice.png" alt="ice-type" />
				</button>
			</div>

			<div class="type-icons type-icons-first-row">
				<button name="fight" onclick="location.href='TypeViewC?type=Fight'">
					<img src="img/pokemon-type/circle-type/fight.png" alt="fight-type" />
				</button>
				<button name="poison"
					onclick="location.href='TypeViewC?type=Poison'">
					<img src="img/pokemon-type/circle-type/poison.png"
						alt="poison-type" />
				</button>
				<button name="ground"
					onclick="location.href='TypeViewC?type=Ground'">
					<img src="img/pokemon-type/circle-type/ground.png"
						alt="ground-type" />
				</button>
			</div>
		</div>

		<div class="type-icons-wrapper">
			<div class="type-icons type-icons-second-row">
				<button name="flying"
					onclick="location.href='TypeViewC?type=Flying'">
					<img src="img/pokemon-type/circle-type/flying.png"
						alt="flying-type" />
				</button>
				<button name="psychic"
					onclick="location.href='TypeViewC?type=Psychic'">
					<img src="img/pokemon-type/circle-type/psychic.png"
						alt="psychic-type" />
				</button>
				<button name="bug" onclick="location.href='TypeViewC?type=Bug'">
					<img src="img/pokemon-type/circle-type/bug.png" alt="bug-type" />
				</button>
			</div>

			<div class="type-icons type-icons-second-row">
				<button name="rock" onclick="location.href='TypeViewC?type=Rock'">
					<img src="img/pokemon-type/circle-type/rock.png" alt="rock-type" />
				</button>
				<button name="ghost" onclick="location.href='TypeViewC?type=Ghost'">
					<img src="img/pokemon-type/circle-type/ghost.png" alt="ghost-type" />
				</button>
				<button name="dragon"
					onclick="location.href='TypeViewC?type=Dragon'">
					<img src="img/pokemon-type/circle-type/dragon.png"
						alt="dragon-type" />
				</button>
			</div>

			<div class="type-icons type-icons-second-row">
				<button name="dark" onclick="location.href='TypeViewC?type=Dark'">
					<img src="img/pokemon-type/circle-type/dark.png" alt="dark-type" />
				</button>
				<button name="steel" onclick="location.href='TypeViewC?type=Steel'">
					<img src="img/pokemon-type/circle-type/steel.png" alt="steel-type" />
				</button>
				<button name="fairy" onclick="location.href='TypeViewC?type=Fairy'">
					<img src="img/pokemon-type/circle-type/fairy.png" alt="fairy-type" />
				</button>
			</div>
		</div>

		<!-- Search Bar -->
		<div class="search-bar-area">
			<form action="DetailC" id="searchForm">
				<div id="search-button-flex">
					<input type="text" id="search-input" maxlength="10"
						placeholder="Search Pokémon" name="search"
						onkeydown="handleKeyPress(event)" />
					<button id="search-button" type="button" onclick="checkPokemon()"></button>
					<input type="hidden" value="${param.lang }" id="lang">
				</div>
			</form>
		</div>
		<!-- Pokemon Cards Gallery -->
		<div class="scrollable">
			<c:forEach var="pokemon" items="${Pokemons }">
				<!-- Border-color by each pokemon's type -->
				<div onclick="location.href='DetailC?search=${pokemon.name }'"
					class="pokemon-card"
					style="border-color: ${colors[pokemon.type1]};
						<c:if test='${not empty pokemon.type2}'>
						background-image: linear-gradient(rgba(255, 255, 255, 0.6) ,rgba(255, 255, 255, 0.6)), linear-gradient(to bottom, ${colors[pokemon.type1]}, ${colors[pokemon.type2]});
						background-origin: border-box; 
						background-clip: content-box, border-box; 
						border-radius: 15px;
						border: 5px solid transparent;
						</c:if>">
					<div class="card-white-bg">
						<div class="card-contents">
							<p>#${pokemon.no }</p>
							<img src="${pokemon.frontDefault }" alt="${pokemon.name }"
								class="card-pokemon-img" />
							<hr class="horizontal-line" />
							<p>${pokemon.name }</p>
							<div class="type-icons-area">
								<c:forEach var="type" items="${Types}">
									<c:if
										test="${type.typeNameKo eq pokemon.type1 || type.typeNameJa eq pokemon.type1 || type.typeNameEn eq pokemon.type1}">
										<img src="img/pokemon-type/circle-type/${type.typeImg}"
											alt="${type.typeNameKo}" class="card-type-icon" />
										<input type="hidden" id="type1Color"
											value="${colors[pokemon.type1]}" />
									</c:if>
									<c:if
										test="${type.typeNameKo eq pokemon.type2 || type.typeNameJa eq pokemon.type2 || type.typeNameEn eq pokemon.type2}">
										<img src="img/pokemon-type/circle-type/${type.typeImg}"
											alt="${type.typeNameKo}" class="card-type-icon" />
										<input type="hidden" id="type2Color"
											value="${colors[pokemon.type2]}" />
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				</a>
			</c:forEach>
		</div>
	</div>

	<!-- <div
		style="width: 200px; 
		height: 100px; 
		border: 5px solid transparent; 
		border-radius: 20px; 
		background-image: linear-gradient(#444444, #444444), linear-gradient(to right, #fbfcb9be, #ffcdf3aa, #65d3ffaa); 
		background-origin: border-box; 
		background-clip: content-box, border-box; 
		margin: 10px;">
	</div> -->

	<%-- ${colors["물"]} ${colors} --%>
</body>
</html>
