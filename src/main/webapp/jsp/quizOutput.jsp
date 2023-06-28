<%@page import="java.sql.DriverManager"%>
<%@page import="com.pikapedia.db.DBManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.pikapedia.db.Pokemon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>quizOutput</title>
<link rel="stylesheet" href="css/quiz.css" />
<link rel="stylesheet" href="css/index.css" />
<link rel="stylesheet" href="css/pokedexFramegame.css" />
</head>

<body>
	<div id="pokedex-wrapper">
		<div id="pokedex-red-frame">
			<div id="pokedex-circles">
				<img src="img/pokedex-circles.png" alt="" />
			</div>
			<div id="pokedex-blue-shadow">
				<div class="quiz-Container">
					<div class="quiz-LeftBlank">
					</div>
					<div class="quiz-Center">
						<div class="center-Up">
							<div class="myPoke">
								<div class="enemyPokeName">${poketmon.p_name }</div>
								<input type="hidden" id="pk_no" value="${poketmon.p_no }">
								<div class="myPoke-Up">
									<img id="enemyPokeHp" alt="적팀포켓몬 체력바"
										src="img/game/enemyPokeHpNew.png">
								</div>
								<div class="myPoke-Down">
									<img id="trainerImg" alt="트레이너 이미지" src="img/game/trainer.png">
								</div>
							</div>
							<div class="enemyPoke">
								<div class="enemyPoke-Up">
									<img id="imgshaddow" alt="포켓몬 이미지"
										src="${poketmon.p_frontDefault}"> 
								</div>
								<div class="enemyPoke-Down">
								<div class="enemyPoke-name">이재강 Lv1</div>
									<img id="myPokeHp" alt="우리트레이너 체력바" src="img/game/myPokemonHp.png">
								</div>
							</div>
						</div>
						<div class="cetner-Down">
							<div class="blank-Space">
								<div class="blank-SpaceIn">
									<div class="spaceInTwo">
							 		<img id="userInputSpace" alt="인풋창" src="img/game/userInputImg.png">
										<input type="hidden" id="userInputName" onkeydown="handleEnterKey(event)"> 
										<button id="attackBtn">공격하기</button>
									<!-- 	<button id="cancelBtn">취소</button> -->
									</div>
								</div>
							</div>
							<div class="btn-Four">
								<div class="btn-Four-In">
									<div class="fightPokemon">
										<div class="fight-Btn">
											<button id="attack-Btn" onclick="checkPokemonName()">싸운다</button>
										</div>
										<div class="poke-Btn">
											<button id="poke-Btn" onclick="location.reload()">포켓몬</button>
										</div>
									</div>
									<div class="itemQuit">
										<div class="items-Btn">
											<button id="hint-Btn" onclick="showHint()">아이템</button>
										</div>
										<div class="quit-Btn">
											<button id="run-Btn" onclick="location.href='GameHomeC'">도망간다</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="quiz-RightBlank">
						<input type="hidden" id="pk_name" value="${poketmon.p_name }">>
						<input type="hidden" id="account_game" value="${account.id}">>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <script type="text/javascript" src="js/quiz.js"></script>
</body>
</html>
