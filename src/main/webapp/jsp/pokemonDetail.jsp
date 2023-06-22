<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pokemonDetail</title>

</head>
<body>
<div id="header">
<div id="title"><span>Pikapedia</span></div>
<div id="language"></div>
</div>


<c:forEach var="pokemon" items="${scPokemons}">
<div id="mainpage">
	<div id="content1">
		<div id="p_numName"></div>
		<div id="p_typeImgs"></div>
	</div>
	<div id="content2">
		<div class="p_info_column">TYPE</div>
		<div class="p_info_column">WEIGHT</div>
		<div class="p_info_column">HEIGHT</div>
	</div>
	<div id="content3">
		<div class="p_info_column2">${pokemon.p_type1 }, ${pokemon.p_type2 }</div>
		<div class="p_info_column2">${pokemon.p_weight }kg</div>
		<div class="p_info_column2">${pokemon.p_height }m</div>
	</div>
	<div id="content4">
		<div class="p_des"><span>${pokemon.p_des }</span></div>	
	</div>
	<div id="content5">
		
	</div>
	<div id="content5-2">
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
<div id="footer">
<span>ⓒ 2023 Pikapedia. All rights reserved.</span>
</div>



<%-- ${pokemon.p_no }<br>
${pokemon.p_name }<br>
${pokemon.p_height }<br>
${pokemon.p_weight }<br>
${pokemon.p_type1 }<br>
${pokemon.p_type2 }<br>
${pokemon.p_des }<br>
<img alt="" src="${pokemon.p_frontDefault }" style="width:200px; height:200px;"><br>
<img alt="" src="${pokemon.p_backDefault }" style="width:50px; height:50px;">
<img alt="" src="${pokemon.p_frontShiny }" style="width:50px; height:50px;">
<img alt="" src="${pokemon.p_backShiny }" style="width:50px; height:50px;"><br> --%>

</body>
</html>