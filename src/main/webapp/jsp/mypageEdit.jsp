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
                    <span class="pokedex-title-txt">Mypage Edit</span>
                    <img src="/img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <div class="profile-container">
                        <img class="profile-icon" src="/img/icon/account-icon/profile-user3.png">
                        <img class="profile-gear-icon" src="/img/icon/account-icon/gear.png">   <%--이걸 누르면 프로필 사진 수정기능 넣어야함--%>
                    </div>
                    <form action="#C" method="post">
                        <div class="btn-container">
                            <div>
                                <img class="user-icon" src="/img/icon/account-icon/profile-user1.png">
                                <input class="info-input-btn" type="text" placeholder="Name">
                            </div>
                            <div>
                                <img class="user-icon" src="/img/icon/account-icon/profile-user2.png">
                                <input class="info-input-btn" type="text" placeholder="User Name" pattern="[A-Za-z][A-Za-z0-9]{4,}">
                            </div>
                            <div>
                                <img class="user-icon" src="/img/icon/account-icon/pw.png">
                                <input class="info-input-btn" type="password" placeholder="PW" pattern="^(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$">
                            </div>
                            <div>
                                <img class="user-icon" src="/img/icon/account-icon/pw-confirm.png">
                                <input class="info-input-btn" type="password" placeholder="PW Confirm" pattern="^(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$">
                            </div>
                            <div>
                                <img class="user-icon" src="/img/icon/account-icon/email.png">
                                <input class="info-input-btn" type="email" placeholder="Email">
                            </div>
                            <button class="confirm-btn">Confirm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>