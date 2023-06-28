	console.log(document.getElementById('pk_no').value);
	document.getElementById('account_game').value;
	var userGameId = document.getElementById('pk_name').value
	
	var languageDex = document.getElementById('pk_name').value;
	var cleanDex = languageDex.replace(/[♂♀]/g, '');
	console.log(cleanDex);
	console.log(languageDex);
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
	var selectedOption = 0; // 선택지의 초기 위치
	
	var halfLength = Math.floor(cleanDex.length / 2);
	var hint = cleanDex.slice(0, halfLength);
	let pkno = document.getElementById('pk_no').value;
	var count = 2;
	
	function countGame() {
	
	
	for (let i = count; i > -1; i--){
	
		if(count === 3) {
		} else if (count === 2){
			 document.getElementById("myPokeHp").src = "img/game/myTeamTrainer2.png";
			    setTimeout(function() {
		        moveTrainer();
		      }, 900);
		} else if (count === 1){
			 document.getElementById("myPokeHp").src = "img/game/myTeamTrainer1.png";
			    setTimeout(function() {
		        moveTrainer();
		      }, 900);
		} else {
			 document.getElementById("myPokeHp").src = "img/game/myTeamTrainer0.png";
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer1.png";
			 document.getElementById("trainerImg").style.width = "68%";
		      }, 100);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer2.png";
			 document.getElementById("trainerImg").style.width = "64%";
		      }, 200);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer3.png";
			 document.getElementById("trainerImg").style.width = "60%";
		      }, 300);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer4.png";
			 document.getElementById("trainerImg").style.width = "56%";
		      }, 400);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer5.png";
			 document.getElementById("trainerImg").style.width = "52%";
		      }, 500);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer6.png";
			 document.getElementById("trainerImg").style.width = "48%";
		      }, 600);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer7.png";
			 document.getElementById("trainerImg").style.width = "44%";
		      }, 700);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer8.png";
			 document.getElementById("trainerImg").style.width = "40%";
		      }, 800);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer9.png";
			 document.getElementById("trainerImg").style.width = "36%";
		      }, 900);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer10.png";
			 document.getElementById("trainerImg").style.width = "32%";
		      }, 1000);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer11.png";
			 document.getElementById("trainerImg").style.width = "28%";
		      }, 1100);
			  setTimeout(function() {
			 document.getElementById("trainerImg").src = "img/game/deadTrainer12.png";
			 document.getElementById("trainerImg").style.width = "0%";
		      }, 1200);
			 
			 setTimeout(function() {
	          location.reload();
		      }, 1500);
		}
	}
	}
		
	var hiddenText = "";
	for (var i = 0; i < cleanDex.length; i++) {
		hiddenText += "?";
	}

	var halfHiddenText = hint;
	for (var i = 0; i < cleanDex.length - Math.floor(cleanDex.length / 2); i++) {
		halfHiddenText += "?";
	}
	
	document.getElementsByClassName("enemyPokeName")[0].innerHTML = hiddenText;
	
	
	const fightBtn = document.getElementById('attack-Btn');
	const pokeBtn = document.getElementById('poke-Btn');
	const itemBtn = document.getElementById('hint-Btn');
	const runBtn = document.getElementById('run-Btn');
	
	let selectedIndex = 0;
	
	let disableKeyboard = false; // 키보드 조작 비활성화 여부를 나타내는 변수

	document.addEventListener('keydown', (event) => {
	  if (disableKeyboard) {
	    // 키보드 조작이 비활성화된 경우에는 코드를 실행하지 않음
	    return;
	  }

	  if (event.key === 'ArrowUp' && selectedIndex > 0) {
	    selectedIndex--;
	  } else if (event.key === 'ArrowDown' && selectedIndex < 3) {
	    selectedIndex++;
	  } else if (event.key === 'ArrowLeft' && selectedIndex > 0) {
	    selectedIndex--;
	  } else if (event.key === 'ArrowRight' && selectedIndex < 3) {
	    selectedIndex++;
	  }

	  setFocus1(selectedIndex);
	});

	// 싸운다 버튼 클릭 이벤트 리스너
	fightBtn.addEventListener('click', () => {
	  disableKeyboard = true; // 키보드 조작 비활성화
	  result(); // 실행할 동작 실행
	});

	// 초기 선택된 버튼에 포커스를 줍니다.
	setFocus1(selectedIndex);

	// 포커스 설정 함수
	function setFocus1(index) {
  switch (index) {
    case 0:
      fightBtn.focus();
      break;
    case 1:
      pokeBtn.focus();
      break;
    case 2:
      itemBtn.focus();
      break;
    case 3:
      runBtn.focus();
      break;
    default:
      // 선택된 버튼의 인덱스가 범위를 벗어나는 경우에는 포커스를 주지 않음
      break;
  }
}

	
	function result() {
		  // 선택된 버튼에 따라 실행할 동작을 정의합니다.
		  switch (selectedIndex) {
		    case 0:
		    	checkPokemonName();
		      break;
		    case 1:
		    	"location.reload()";
		    	break;
		    case 2:
		    	showHint();
		    	break;
		    case 3:
		    "location.href='GameHomeC'";
		      break;
		    default:
		      break;
		  }
		}
	
	
	
	
	
	
	  attackBtn.addEventListener("click", function() {
		  isReturning = false;
		  console.log(isReturning);
		    inputValue = userInputName.value; // inputValue에 값을 할당
		    console.log("사용자 입력 값:", inputValue);
		    console.log("포켓몬 입력 값:", cleanDex);
		    
		    if (inputValue === cleanDex) {
		      moveImage();
		      setTimeout(function() {
		        movePokemon();
		        moveUpAndDown();
		      }, 1000);

		      setTimeout(function() {
		        document.getElementById("enemyPokeHp").src = "img/game/enemyNoHp.png";
		        document.getElementById("imgshaddow").style.filter = "none";
		        document.getElementsByClassName("enemyPokeName")[0].innerHTML = cleanDex;
		      }, 2500);
		      
		
		      
		      setTimeout(function() {
	          location.reload();
		      }, 3500);
		      
		    } else if (inputValue === "" || inputValue === null) {
		      return;
		      
		    } else {
			  movePokeImage();
		
		      result(); // result() 함수 호출 추가
		      countGame();
		      count--;
		    }
		  });
	
		
	
	
	
	
	function checkPokemonName() {
		
		  var attackBtn = document.getElementById("attackBtn");
		  var userInputName = document.getElementById("userInputName");
		  var inputValue; // inputValue 변수를 함수 범위로 이동
		  attackBtn.click();


		  document.getElementById("userInputSpace").style.display = "block";
		  document.getElementById("userInputName").type = "text";
		  var blankSpace = document.querySelector('.blank-Space');
		  if (blankSpace) {
		    blankSpace.classList.remove('blank-Space');
		  }

		  var blankSpaceIn = document.querySelector('.blank-SpaceIn');
		  if (blankSpaceIn) {
		    blankSpaceIn.classList.remove('blank-SpaceIn');
		  }
		  document.getElementById("attackBtn").style.display = "block";
		/*   document.getElementById("cancelBtn").style.display = "block"; */
		  setFocus();
		}

	function moveImage() {
		  if (!isReturning) {
		    currentPositionX += speed * directionX;
		    currentPositionY += speed * directionY;
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
		
	var startPositionXX = 0;
	var startPositionYY = 0;
	var endPositionXX = -180;
	var endPositionYY = 180;
	var currentPositionXX = startPositionXX;
	var currentPositionYY = startPositionYY;
	var speed = 15;
	var directionXX = 1;
	var directionYY = -1;
	var isReturningPoke = false; // 돌아오는 중인지 여부
	var animationIdPoke; // 애니메이션 식별자
	
	function movePokeImage() {
		
		  if (!isReturningPoke) {
		    currentPositionXX -= speed * directionXX; // ? = 0 - (15x1)   [-15,-30,-45]
		    currentPositionYY -= speed * directionYY; // ? = 0 - (15x-1)  [15,30,45,60] ㅇㅋ수정굿
		    pokemonImg.style.transform = 'translate(' + currentPositionXX + 'px, ' + currentPositionYY + 'px)';
		  } else {
		    currentPositionXX += speed * directionXX; // ? = 0 + 15 30 45 60
		    currentPositionYY += speed * directionYY; // ? = 0 + -(15,30,45,60)
		    pokemonImg.style.transform = 'translate(' + currentPositionXX + 'px, ' + currentPositionYY + 'px)';
		  }
			//	15 30                180
		  if (currentPositionYY >= endPositionYY && !isReturningPoke) {
		    isReturningPoke = true; // 돌아오는 상태로 전환
		  }
			// 15 30 45           0						-15 -30 -45     0
		  if (currentPositionYY <= startPositionYY && currentPositionXX >= startPositionXX && isReturningPoke) {
		    cancelAnimationFrame(animationIdPoke); // 애니메이션 정지
		    isReturningPoke = false;
		  } else {
		    animationIdPoke = requestAnimationFrame(movePokeImage); // 다음 프레임 요청
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
function setFocus() {
	  document.getElementById("userInputName").focus();
	}

function handleEnterKey(event) {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	    document.getElementById("attackBtn").click(); // "공격하기" 버튼 클릭
	    
	  }
	}
	



	function showHint() {
		document.getElementsByClassName("enemyPokeName")[0].innerHTML = halfHiddenText;
	}