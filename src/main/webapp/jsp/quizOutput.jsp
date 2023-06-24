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
									<img id="myPokeHp" alt="우리포켓몬 체력바" src="img/game/myPokemonHp.png">
								</div>
							</div>
						</div>
						<div class="cetner-Down">
							<div class="blank-Space">
								<div class="blank-SpaceIn">
									<img id="poketball" alt="몬스터볼" src="img/game/poketballNew.png">
										<div class="inputName"><input type="text" id="userInputName">
										</div>
								</div>
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
<script>
	var languageDex = '${poketmon.p_name}';
	var trainerImg = document.getElementById('trainerImg');
	var pokemonImg = document.getElementById('imgshaddow');
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
	var halfLength = Math.floor(languageDex.length / 2);
	var hint = languageDex.slice(0, halfLength);

	console.log(languageDex);
	var hiddenText = "";
	for (var i = 0; i < languageDex.length; i++) {
		hiddenText += "?";
	}

	var halfHiddenText = hint;
	for (var i = 0; i < languageDex.length - Math.floor(languageDex.length / 2); i++) {
		halfHiddenText += "?";
	}
	
	document.getElementsByClassName("enemyPokeName")[0].innerHTML = hiddenText;
function checkPokemonName() {
	isReturning = false;
var userInput = prompt("포켓몬 이름을 입력해주세요:");
		if (userInput === languageDex) {
		moveImage();
		setTimeout(function() {
			movePokemon()
			moveUpAndDown() 
		}, 1000);
		
		setTimeout(function() {
		document.getElementById("enemyPokeHp").src = "img/game/enemyNoHp.png";
		document.getElementById("imgshaddow").style.filter = "none";
		document.getElementsByClassName("enemyPokeName")[0].innerHTML = languageDex;
		}, 2500);

		setTimeout(function() {
		location.reload();
		}, 3500);
		} else if (userInput == '' || userInput == null) {
			return;
		} else {
			moveImage();
			setTimeout(function() {
				moveTrainer();
			}, 1000);
		     
		             }
	}
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

function movePokemon() {
	  var startPositionX = 0; // 시작 X 좌표
	  var endPositionX = 30; // 목표 X 좌표
	  var startPositionY = 0; // 시작 Y 좌표
	  var endPositionY = 50; // 목표 Y 좌표
	  var currentPositionX = startPositionX;
	  var currentPositionY = startPositionY;
	  var directionX = 1; // 이동 방향 (1: 오른쪽, -1: 왼쪽)
	  var directionY = 1; // 이동 방향 (1: 위쪽, -1: 아래쪽)
	  var speed = 7; // 이동 속도 (조정 가능)
	  var moveCount = 0; // 움직인 횟수를 저장하는 변수

	  function animate() {
	    currentPositionX += speed * directionX;
	    pokemonImg.style.transform = 'translateX(' + currentPositionX + 'px)';

	    if (currentPositionX >= endPositionX || currentPositionX <= startPositionX) {
	      directionX *= -1; // 이동 방향을 반대로 변경
	      moveCount++; // 움직인 횟수 증가
	    }

	    if (moveCount >= 6) {
	      moveUpAndDown();
	    } else {
	      animationId = requestAnimationFrame(animate); // 다음 프레임 요청
	    }
	  }
	  
	  function moveUpAndDown() {
	    currentPositionY += speed * directionY;
	    pokemonImg.style.transform = 'translateX(' + currentPositionX + 'px) translateY(' + -currentPositionY + 'px)';

	    if (currentPositionY >= endPositionY || currentPositionY <= startPositionY) {
	      directionY *= -1; // 이동 방향을 반대로 변경
	      moveCount++; // 움직인 횟수 증가
	    }

	    if (moveCount >= 10) {
	      cancelAnimationFrame(animationId); // 애니메이션 정지
	    } else {
	      animationId = requestAnimationFrame(moveUpAndDown); // 다음 프레임 요청
	    }
	  }

	animate();
		}

function moveTrainer() {
	  var startPositionX = 0; // 시작 X 좌표
	  var endPositionX = 30; // 목표 X 좌표
	  var currentPositionX = startPositionX;
	  var directionX = 1; // 이동 방향 (1: 오른쪽, -1: 왼쪽)
	  var speed = 7; // 이동 속도 (조정 가능)
	  var moveCount = 0; // 움직인 횟수를 저장하는 변수
	  var isAnimating = false; // 애니메이션 실행 상태를 나타내는 변수
	  var animationId; // 애니메이션 식별자

	  function animateTrainer() {
	    currentPositionX += speed * directionX;
	    trainerImg.style.transform = 'translateX(' + currentPositionX + 'px)';

	    if (currentPositionX >= endPositionX || currentPositionX <= startPositionX) {
	      directionX *= -1; // 이동 방향을 반대로 변경
	      moveCount++; // 움직인 횟수 증가
	    }

	    if (moveCount >= 6) {
	    	  cancelAnimationFrame(animationId);
	    } else {
	      animationId = requestAnimationFrame(animateTrainer); // 다음 프레임 요청
	    }
	  }

	  if (!isAnimating) {
	    isAnimating = true;
	    animateTrainer();
	  }

	  setTimeout(function() {
	    cancelAnimationFrame(animationId);
	    isAnimating = false;
	    currentPositionX = startPositionX;
	    trainerImg.style.transform = 'translateX(' + currentPositionX + 'px)';
	  }, 1000);
	}

function executeAnimation() {
    moveImage();

    setTimeout(function() {
        moveTrainer();
    }, 1000);
}






	function showHint() {
		document.getElementsByClassName("enemyPokeName")[0].innerHTML = halfHiddenText;
	}
	</script>
</body>
</html>
