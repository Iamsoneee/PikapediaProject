<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="css/login.css">
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
                    <span class="pokedex-title-txt">Login</span>
                    <img src="img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <form action="LoginC" method="post">
                        <div class="btn-container">
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/profile-user2.png">
                                <input name="id" class="info-input-btn" type="text" placeholder="User Name">
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/pw.png">
                                <input name="pw" type="password" class="info-input-btn" placeholder="PW">
                            </div>
                            <div class="confirm-btn-container">
                                <div>
                                	<button class="confirm-btn">Login</button>
                                </div>
                                <div>
                                	<button class="confirm-btn" type="button" onclick="location.href='SignupC'">Sign Up</button>
                               	</div>
                            </div>
                            <!-- 
                            <br>
                            <div class="or-signup">Or Sign Up With</div>
                            <br>
                            <div class="google-logo-container">
                                <img class="google-logo" alt="구글 로고"
                                     src="img/icon/account-icon/google-icon.png">
                            </div> 
                            -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>