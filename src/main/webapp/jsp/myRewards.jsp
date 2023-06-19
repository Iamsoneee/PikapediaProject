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
		<div>
			<div class="r-pokemon">${pokemon.no }</div>
			<div class="r-pokemon">${pokemon.name }</div>
			<div class="r-pokemon">${pokemon.weight }</div>
			<div class="r-pokemon">${pokemon.height }</div>
			<div class="r-pokemon">${pokemon.type1 }</div>
			<div class="r-pokemon">${pokemon.type2 }</div>
			<div class="r-pokemon"><img alt="포켓몬 이미지" src="${pokemon.frontDefault }" style="max-width: 100px;"></div>
		</div>
		</c:forEach>
	</div>
  </body>
</html>
