<%@page import="com.pikapedia.detail.DetailPokeBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title></title>
    <link rel="stylesheet" href="css/quiz.css" />
    <link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="css/pokedexFramegame.css" />
<%
DetailPokeBean poketmon = (DetailPokeBean) request.getAttribute("poketmon");
%>
    <script>
    	var poketmon = `${poketmon.p_name}', '${poketmon.p_front_default_img}`;

    	function correct() {
        var userInput = prompt("포켓몬 이름을 입력해주세요" + "");
        var languageDex = poketmon.p_name;

        console.log("userInput:", userInput);
        console.log("languageDex:", languageDex);

        if (userInput == languageDex) {
          alert("정답입니다.");
          document.getElementById("imgshaddow").style.filter = "none";
          location.reload();
        } else if (userInput === null) {
          alert("다시 입력해주세요");
        } else {
          alert("오답입니다.");
        }
      }

      function plzhint() {
        var languageDex = poketmon.p_name;
        var halfDex = Math.ceil(languageDex.length / 2);
        var hint = languageDex.slice(0, halfDex);
        alert("힌트: " + hint);
      }

      function rightAnswer() {
        var languageDex = poketmon.p_name;
        alert("개발자 정답: " + languageDex);
      }
    </script>
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
            <div class="enemyPoke-Up"></div>
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
                  <button onclick="correct()">싸운다</button>
                </div>
                <div class="poke-Btn">
                  <button onclick="location.reload()">포켓몬</button>
                </div>
              </div>
              <div class="itemQuit">
                <div class="items-Btn">
                  <button onclick="plzhint()">아이템</button>
                </div>
                <div class="quit-Btn">
                  <button onclick="location.href='GameHomeC'">
                    도망간다
                  </button>
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
</html>
