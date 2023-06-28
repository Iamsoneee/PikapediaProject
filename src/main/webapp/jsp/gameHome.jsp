<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>quizHome</title>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/pokedexFrame.css">
    <link rel="stylesheet" href="css/gameHome.css">
</head>
<body>
<div id="pokedex-wrapper">
    <div id="pokedex-red-frame">
        <div id="pokedex-circles">
            <img src="img/pokedex-circles.png" alt=""/>
        </div>
        <div id="pokedex-blue-shadow">
            <div id="pokedex-blue-frame">
                <div class="mainDescription">
                    <div>
                    </div>
                    포켓몬의 실루엣을 보고 <br/>
                    해당 포켓몬의 이름을 맞춰주세요 <br/>
                    <br/>
                    <b>싸운다(입력하기)</b> <br/>
                    해당 포켓몬의 이름을 입력해서 공격해주세요. <br/>
                    <br/>
                    <b>아이템(힌트)</b> <br/>
                    해당 포켓몬의 이름이 절반 공개됩니다. <br/>
                    <br/>
                    <b>포켓몬(새로고침)</b> <br/>
                    다른 포켓몬으로 바꿉니다. <br/>
                    <br/>
                    <b>도망간다(나가기)</b> <br/>
                    시작페이지로 이동합니다. <br/>
                    <br>
                    <form action="GameC">
                        <button id="followButton">이동하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>