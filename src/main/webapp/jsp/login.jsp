<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="../css/pokedexFrameAccount.css"/>
</head>
<body>
<div id="pokedex-wrapper">
    <div id="pokedex-red-frame">
        <div id="pokedex-circles">
            <img src="../img/pokedex-circles.png" alt=""/>
        </div>
        <div id="pokedex-blue-shadow">
            <div id="pokedex-blue-frame">
                <div id="pokedex-title-area">
                    <span class="pokedex-title-txt">Login</span>
                    <img src="../img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <form action="LoginC" method="post">
                        ID <input name="id">
                        PW <input name="pw" type="password">
                        <button>로그인</button>
                        <button type="button" onclick="location.href='JoinAccountC'">회원가입</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>