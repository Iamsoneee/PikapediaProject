<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>pokemonDetail</title>
<link rel="stylesheet" type="text/css" href="css/pokemonDetail.css">
</head>
<c:forEach var="pokemon" items="${scPokemons}">
	<c:forEach var="type" items="${Types }">
		<c:if
			test="${type.typeNameKo eq pokemon.p_type1 || type.typeNameJa eq pokemon.p_type1 || type.typeNameEn eq pokemon.p_type1}">
			<c:set var="color1" value="${type.typeColor }" />
		</c:if>
		<c:if
			test="${type.typeNameKo eq pokemon.p_type2 || type.typeNameJa eq pokemon.p_type2 || type.typeNameEn eq pokemon.p_type2}">
			<c:set var="color2" value="${type.typeColor }" />
		</c:if>
	</c:forEach>
</c:forEach>
<c:choose>
	<c:when test="${color2 != null}">
		<body style="background: linear-gradient( to bottom, <c:out value='${color1}'/>, <c:out value='${color2}'/> );">
	</c:when>
	<c:otherwise>
		<body style="background-color:<c:out value='${color1}'/>;">
	</c:otherwise>
</c:choose>
<c:forEach var="pokemon" items="${scPokemons}">
	<img id="pokeimg" alt="" src="${pokemon.p_frontDefault }">
	<div id="mainpage">
		<div id="content1">
			<div id="p_numName">
				#${pokemon.p_no }<br>${pokemon.p_name }</div>
			<div id="p_typeImgs">
				<c:forEach var="type" items="${Types }">
					<c:if
						test="${type.typeNameKo eq pokemon.p_type1 || type.typeNameJa eq pokemon.p_type1 || type.typeNameEn eq pokemon.p_type1}">
						<img class="type_img" alt=""
							src="img/pokemon-type/square-type/${type.typeImg }">
					</c:if>
					<c:if
						test="${type.typeNameKo eq pokemon.p_type2 || type.typeNameJa eq pokemon.p_type2 || type.typeNameEn eq pokemon.p_type2}">
						<img class="type_img" alt=""
							src="img/pokemon-type/square-type/${type.typeImg }">
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div id="content2">
			<div class="p_info_column">
				<span>TYPE</span>
			</div>
			<div class="p_info_column">
				<span>WEIGHT</span>
			</div>
			<div class="p_info_column">
				<span>HEIGHT</span>
			</div>
		</div>
		<div id="content3">
			<div class="p_info_column2">
				<span>${pokemon.p_type1 }<c:if
						test="${pokemon.p_type2 != ''}">, ${pokemon.p_type2 }</c:if></span>
			</div>
			<div class="p_info_column2">
				<span>${pokemon.p_weight }kg</span>
			</div>
			<div class="p_info_column2">
				<span>${pokemon.p_height }m</span>
			</div>
		</div>
		<div id="content4">
			<div class="p_des">
				<span>${pokemon.p_des }</span>
			</div>
		</div>
		<div id="content5">
			<div>
				<img class="p_img" alt="" src="${pokemon.p_frontDefault }">
			</div>
			<div>
				<img class="p_img" alt="" src="${pokemon.p_backDefault }">
			</div>
			<div>
				<img class="p_img" alt="" src="${pokemon.p_frontShiny }">
			</div>
			<div>
				<img class="p_img" alt="" src="${pokemon.p_backShiny }">
			</div>

		</div>
	</div>
</c:forEach>
</body>
</html>