<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>signup</title>
    <link rel="stylesheet" href="css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="css/signup.css">
</head>
<body>
<div id="pokedex-wrapper">
    <div id="pokedex-red-frame">
        <div id="pokedex-circles">
            <img src="img/pokedex-circles.png" alt=""/>
        </div>
        <div id="pokedex-blue-shadow">
            <div id="pokedex-blue-frame">
                <div id="pokedex-title-area">
                    <span class="pokedex-title-txt">Sign up</span>
                    <img src="img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <form action="SignupC" method="post">
                        <div class="btn-container">
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/profile-user1.png">
                                <input class="info-input-btn" type="text" placeholder="Name">
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/profile-user2.png">
                                <input class="info-input-btn" type="text" placeholder="User Name"  pattern="[A-Za-z][A-Za-z0-9]{4,}" required>
                               <%-- [A-Za-z]: 알파벳 대문자로 시작해야 함
                                [A-Za-z0-9]{4,}: 알파벳 대소문자와 숫자의 조합으로 최소 5자 이상이어야 함--%>
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/pw.png">
                                <input class="info-input-btn" type="password" placeholder="PW" pattern="^(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$" required>
                                <%--(?=.*[A-Z]): 대문자를 최소한 한 글자 이상 포함해야 함
                                (?=.*[a-z]): 소문자를 최소한 한 글자 이상 포함해야 함
                                (?=.*\d): 숫자를 최소한 한 글자 이상 포함해야 함
                                (?=.*[@$!%*?&]): 특수문자(@$!%*?&)를 최소한 한 글자 이상 포함해야 함
                                [A-Za-z\d@$!%*?&]{8,}: 대소문자, 숫자, 특수문자를 포함하여 최소 8자 이상이어야 함--%>
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/pw-confirm.png">
                                <input class="info-input-btn" type="password" placeholder="PW Confirm" pattern="^(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$" required>
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/email.png">
                                <input class="info-input-btn" type="email" placeholder="Email">
                                <!--유효성검사1:HTML5의 새로운 input type인 email로 가능-->
                            </div>
                            <button class="confirm-btn">Sign Up</button>
                            <br>
                            <div class="or-signup">Or Sign Up With</div>
                            <br>
                            <div>
                                <img class="google-logo" alt="구글 로고"
                                     src="img/icon/account-icon/google-icon.png">
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