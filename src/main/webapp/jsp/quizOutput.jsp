<%@page import="com.pikapedia.search.Pokemon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title></title>
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
                            <div class="myPoke-Up"></div>
                            <div class="myPoke-Down"></div>
                        </div>
                        <div class="enemyPoke">
                            <div class="enemyPoke-Up">
                            <img id="imgshaddow" alt="포켓몬이미지" src="${poketmon.p_frontDefault}">
                            </div>
                            <div class="enemyPoke-Down"></div>
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
        function checkPokemonName() {
            var userInput = prompt("포켓몬 이름을 입력해주세요:");
            var languageDex = '${poketmon.p_name}';
			
            console.log("userInput :" + userInput);
             console.log("languageDex :" + languageDex);
            if (userInput === languageDex) {
                alert("정답입니다.");
                document.getElementById("imgshaddow").style.filter = "none";
                location.reload();
            
            } else if (userInput == null) {
                alert("다시 입력해주세요");
            } else {
            	alert("오답입니다")
            }
        }

        function showHint() {
            var halfLength = Math.ceil(languageDex.length / 2);
            var hint = pokemonName.slice(0, halfLength);
            alert("힌트: " + hint);
        }

        function showCorrectAnswer() {
            alert("개발자 정답: " + languageDex);
        }
    </script>
</html>
