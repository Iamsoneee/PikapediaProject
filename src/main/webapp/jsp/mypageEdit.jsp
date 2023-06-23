<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>mypageEdit</title>
    <link rel="stylesheet" href="/css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="/css/mypageEdit.css">
</head>
<body>
<div id="pokedex-wrapper">
    <div id="pokedex-red-frame">
        <div id="pokedex-circles">
            <img src="/img/pokedex-circles.png" alt=""/>
        </div>
        <div id="pokedex-blue-shadow">
            <div id="pokedex-blue-frame">
                <div id="pokedex-title-area">
                    <span class="pokedex-title-txt">Mypage</span>
                    <img src="/img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <div class="btn-container">
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/profile-user1.png">
                            <input class="info-input-btn" type="text" placeholder="Name">
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/profile-user2.png">
                            <input class="info-input-btn" type="text" placeholder="User Name">
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/pw.png">
                            <input class="info-input-btn" type="text" placeholder="PW">
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/pw-confirm.png">
                            <input class="info-input-btn" type="text" placeholder="PW Confirm">
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/email.png">
                            <input class="info-input-btn" type="text" placeholder="Email">
                        </div>
                        <button type="button" onclick="location.href='#C:컨트롤러 입력해주세요'"  class="confirm-btn">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>