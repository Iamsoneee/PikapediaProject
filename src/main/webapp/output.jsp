<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="pokemon" items="${scPokemons}">
${pokemon.p_no }<br>
${pokemon.p_name }<br>
${pokemon.p_height }<br>
${pokemon.p_weight }<br>
${pokemon.p_type1 }<br>
${pokemon.p_type2 }<br>
${pokemon.p_des }<br>
<img alt="" src="${pokemon.p_frontDefault }" style="width:200px; height:200px;"><br>
<img alt="" src="${pokemon.p_backDefault }" style="width:50px; height:50px;">
<img alt="" src="${pokemon.p_frontShiny }" style="width:50px; height:50px;">
<img alt="" src="${pokemon.p_backShiny }" style="width:50px; height:50px;"><br>

</c:forEach>
</body>
</html>