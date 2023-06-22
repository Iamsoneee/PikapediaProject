<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>signup</title>
    <link rel="stylesheet" href="../css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="../css/signup.css">
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
                    <span class="pokedex-title-txt">Sign up</span>
                    <img src="../img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <form action="SignupC" method="post">
                        <div class="btn-container">
                            <div>
                                <img class="user-icon" src="../img/icon/account-icon/profile-user1.png">
                                <input class="info-input-btn" type="text" placeholder="Name">
                            </div>
                            <div>
                                <img class="user-icon" src="../img/icon/account-icon/profile-user2.png">
                                <input class="info-input-btn" type="text" placeholder="User Name">
                            </div>
                            <div>
                                <img class="user-icon" src="../img/icon/account-icon/pw.png">
                                <input class="info-input-btn" type="text" placeholder="PW">
                            </div>
                            <div>
                                <img class="user-icon" src="../img/icon/account-icon/pw-confirm.png">
                                <input class="info-input-btn" type="text" placeholder="PW Confirm">
                            </div>
                            <div>
                                <img class="user-icon" src="../img/icon/account-icon/email.png">
                                <input class="info-input-btn" type="text" placeholder="Email">
                            </div>
                            <div class="confirm-btn">Sign Up</div>
                            <br>
                            <div class="or-signup">Or Sign Up With</div>
                            <br>
                            <div>
                                <img class="google-logo" alt="구글 로고"
                                     src="../img/icon/account-icon/google-icon.png">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>