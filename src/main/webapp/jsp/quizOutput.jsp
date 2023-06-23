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
					<div class="quiz-LeftBlank"></div>
					<div class="quiz-Center">
						<div class="center-Up">
							<div class="myPoke">
								<div class="enemyPokeName">${poketmon.p_name }</div>
								<div class="myPoke-Up">
									<img id="enemyPokeHp" alt="적팀포켓몬 체력바"
										src="img/enemyPokeHpNew.png">
								</div>
								<div class="myPoke-Down">
									<img id="trainerImg" alt="트레이너 이미지" src="img/trainer.png">
								</div>
							</div>
							<div class="enemyPoke">
								<div class="enemyPoke-Up">
									<img id="imgshaddow" alt="포켓몬 이미지"
										src="${poketmon.p_frontDefault}">
								</div>
								<div class="enemyPoke-Down">
									<img id="myPokeHp" alt="우리포켓몬 체력바" src="img/myPokemonHp.png">
								</div>
							</div>
						</div>
						<div class="cetner-Down">
							<div class="blank-Space">
								<div class="blank-SpaceIn"></div>
							</div>
							<div class="btn-Four">
								<div class="btn-Four-In">
									<div class="fightPokemon">
										<div class="fight-Btn">
											<button onclick="checkPokemonName()">싸운다</button>
										</div>
										<div class="poke-Btn">
											<button onclick="location.reload()">포켓몬</button>
										</div>
									</div>
									<div class="itemQuit">
										<div class="items-Btn">
											<button onclick="showHint()">아이템</button>
										</div>
										<div class="quit-Btn">
											<button onclick="location.href='GameHomeC'">도망간다</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="quiz-RightBlank"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	var languageDex = '${poketmon.p_name}';

	var hiddenText = "";
	for (var i = 0; i < languageDex.length; i++) {
		hiddenText += "?";
	}

	document.getElementsByClassName("enemyPokeName")[0].innerHTML = hiddenText;

	function checkPokemonName() {
		// 		var userInput = prompt("포켓몬 이름을 입력해주세요:");

		// 		console.log("userInput :" + userInput);
		console.log("languageDex :" + languageDex);
		// 		if (userInput === languageDex) {

var trainerImg = document.getElementById('trainerImg');
var startPositionX = 0;
var startPositionY = 0;
var endPositionX = 180;
var endPositionY = -180;
var currentPositionX = startPositionX;
var currentPositionY = startPositionY;
var speed = 15;
var directionX = 1;
var directionY = -1;
var isReturning = false; // 돌아오는 중인지 여부
var animationId; // 애니메이션 식별자

function moveImage() {
  if (!isReturning) {
    currentPositionX += speed * directionX;
    currentPositionY += speed * directionY;
    console.log(currentPositionX);
    console.log(currentPositionY);
    trainerImg.style.transform = 'translate(' + currentPositionX + 'px, ' + currentPositionY + 'px)';
  } else {
    currentPositionX -= speed * directionX;
    currentPositionY -= speed * directionY;
    trainerImg.style.transform = 'translate(' + currentPositionX + 'px, ' + currentPositionY + 'px)';
  }

  if (currentPositionY <= endPositionY && !isReturning) {
    isReturning = true; // 돌아오는 상태로 전환
  }

  if (currentPositionY >= startPositionY && currentPositionX >= startPositionX && isReturning) {
    cancelAnimationFrame(animationId); // 애니메이션 정지
  } else {
    animationId = requestAnimationFrame(moveImage); // 다음 프레임 요청
  }
}

moveImage();







/*		var startPositionX = 0;
		var endPositionX = 200;
		var startPositionY = 0;
		var endPositionY = -200;
		var currentPositionX = startPositionX;
		var currentPositionY = startPositionY;
		var speed = 2;
		var direction = 1;
		var isReturning = false;
		currentPositionX += speed * direction;
		currentPositionY += speed * direction;
		image.style.transform = 'translate(' + currentPositionX + 'px, '
				+ currentPositionY + 'px)';

		if (currentPositionX >= endPositionX) {
			isReturning = true;
			direction = -1; // 이동 방향을 반대로 변경
		} else if (currentPositionX <= startPositionX && isReturning) {
			isReturning = false;
			direction = 1; // 이동 방향을 원래대로 변경
		}

		if (!isReturning) {
			requestAnimationFrame(moveImage);
		}

		moveImage(); */

		/*
		document.getElementById("enemyPokeHp").src = "img/enemyNoHp.png";
		document.getElementById("imgshaddow").style.filter = "none";
		document.getElementsByClassName("enemyPokeName")[0].innerHTML = languageDex;
		 */

		/*
		setTimeout(function() {
		location.reload();
		}, 1000);*/
		//             } else if (userInput == null) {
		//                 alert("다시 입력해주세요");
		//             } else {
		//             	alert("오답입니다")
		//             }
	}

	function showHint() {
		var halfLength = Math.ceil(languageDex.length / 2);
		var hint = languageDex.slice(0, halfLength);
		alert("힌트: " + hint);
	}
</script>
</html>
