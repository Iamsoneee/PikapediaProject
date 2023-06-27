<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>mypageEdit</title>
    <link rel="stylesheet" href="css/pokedexFrameAccount.css"/>
    <link rel="stylesheet" href="css/mypageEdit.css">
    <script type="text/javascript" src="js/validCheck.js"></script>
	<script type="text/javascript" src="js/valueCheck.js"></script>
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
                    <span class="pokedex-title-txt">Mypage Edit</span>
                    <img src="img/icon/account-icon/poke-spot.png" alt="poke-spot-icon" id="poke-spot-icon"/>
                </div>
                <div id="pokedex-white-bg">
                    <div class="profile-container">
                        <img class="profile-icon" src="img/profile/${account.img }">
                        <img class="profile-gear-icon" src="img/icon/account-icon/gear.png">   <%--이걸 누르면 프로필 사진 수정기능 넣어야함--%>
                    </div>
                    <form action="MyPageEditC" method="post" name="EditAccount" onsubmit="return call();">
                        <div class="btn-container">
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/profile-user1.png">
                                <div class="info-input-btn">${account.id }</div>
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/profile-user2.png">
                                <input class="info-input-btn" type="text" name="UserName" placeholder="User Name">
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/pw.png">
                                <input class="info-input-btn" type="text" name="pw" placeholder="PW">
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/pw-confirm.png">
                                <input class="info-input-btn" type="text" name="PWConfirm" placeholder="PW Confirm">
                            </div>
                            <div>
                                <img class="user-icon" src="img/icon/account-icon/email.png">
                                <input class="info-input-btn" type="email" name="Email" placeholder="Email">
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