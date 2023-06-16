<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<table class="header">
	<tr>
		<td><img id="gameLogo" src="pokeImg/Pokelogo.png" alt="포켓몬 로고"> </td>
	</tr>
</table>

<table class="content">
	<tr>
		<td>
			<jsp:include page="${contentPage }"></jsp:include>
		</td>
	</tr>
</table>
</body>
</html>