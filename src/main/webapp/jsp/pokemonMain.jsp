<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>pokemonMain</title>
<link rel="stylesheet" href="css/pokemonMain.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Border-color by each pokemon's type -->
<script type="text/javascript">
	/* $(function(){
	 $('.pokemon-card').each(function(){
	 var type1 = $(this).data('type1');
	 var type2 = $(this).data('type2');
	 var type1Color = getColorByType(type1);
	 var type2Color = getColorByType(type2);
	
	 if (type2Color === undefined || type2Color === "") {
	 $(this).css({'border-color': type1Color});
	 } else {
	 $(this).css({
	 'border-image': 'linear-gradient(to bottom, ' + type1Color + ', ' + type2Color + ') 1',
	 'border-radius': '15px'
	 });
	 }
	 });
	 }); */
</script>

<style>
.pokemon-card {
	border: 5px solid;
}
</style>

</head>
<body>
	<div id="main-page-wrapper">
		<!-- Pokemon Type Buttons -->
		<div class="type-icons-wrapper">
			<div class="type-icons type-icons-first-row">
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

			<div class="type-icons type-icons-first-row">
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

			<div class="type-icons type-icons-first-row">
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
			<div class="type-icons type-icons-second-row">
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

			<div class="type-icons type-icons-second-row">
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

			<div class="type-icons type-icons-second-row">
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
			<input type="text" id="search-input" maxlength="10" placeholder="Enter the name or number of the Pokémon" />
			<img src="img/icon/magnifier-icon.png"
				alt="magnifier-icon" id="magnifier-icon" />
		</div>

		<!-- Pokemon Cards Gallery -->
		<div class="scrollable">
			<c:forEach var="pokemon" items="${Pokemons }">
				<a href=""> <input type="hidden" value, id>
					<div class="pokemon-card"
						style="border-color: ${colors[pokemon.type1]};
						<c:if test='${not empty pokemon.type2}'>
						border-image: linear-gradient(to bottom, ${colors[pokemon.type1]}, ${colors[pokemon.type2]}) 1;
						border-radius: 15px;
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
										<c:if test="${type.typeNameKo eq pokemon.type1}">
											<img src="img/pokemon-type/circle-type/${type.typeImg}"
												alt="${type.typeNameKo}" class="card-type-icon" />
											<input type="hidden" id="type1Color"
												value="${colors[pokemon.type1]}" />
										</c:if>
										<c:if test="${type.typeNameKo eq pokemon.type2}">
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

	<%-- 	${colors["물"]} ${colors} --%>




</body>
</html>
