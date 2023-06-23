<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>mypage</title>
    <link rel="stylesheet" href="/css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="/css/mypage.css">
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
                    <div class="profile-container">
                        <img class="profile-icon" src="/img/icon/account-icon/profile-user3.png">
                    </div>
                    <div class="btn-container">
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/profile-user1.png">
                            <div class="info-input-btn">이름</div>
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/profile-user2.png">
                            <div class="info-input-btn">닉네임</div>
                        </div>
                        <div>
                            <img class="user-icon" src="/img/icon/account-icon/email.png">
                            <div class="info-input-btn">이메일</div>
                        </div>
                        <div class="confirm-btn-container">
                            <div>
                                <button class="confirm-btn" onclick="location.href='#C'">Confirm</button>
                            </div>
                            <div>
                                <button class="confirm-btn" type="button" onclick="location.href='/jsp/mypageEdit.jsp'">Edit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>