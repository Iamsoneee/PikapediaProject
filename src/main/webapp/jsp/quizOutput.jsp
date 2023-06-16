<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title></title>
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/firework.css" />
    <script>
      function correct() {
        var userInput = prompt("포켓몬 이름을 입력해주세요" + "");
        var languageDex = '<%=request.getAttribute("languageDex")%>';

        console.log("userInput:", userInput);
        console.log("languageDex:", languageDex);

        if (userInput == languageDex) {
          alert("정답입니다.");
          document.getElementById("hiddenText").style.visibility = "visible";
          imgshaddow.style.filter = "none";
          location.reload();
        } else if (userInput == null) {
          alert("다시 입력해주세요");
        } else {
          alert("오답입니다.");
        }
      }
      function plzhint() {
        var languageDex = '<%= request.getAttribute("languageDex") %>';
        var halfDex = Math.ceil(languageDex.length / 2);
        var hint = languageDex.slice(0, halfDex);
        alert("힌트 :" + hint);
      }

      function rightAnswer() {
        var languageDex = '<%= request.getAttribute("languageDex") %>';
        alert("개발자 정답 : " + languageDex);
      }
    </script>
  </head>
  <body>

    <table class="nameQuestion">
      <tr>
        <td id="hiddenText">????</td>
      </tr>
    </table>
    <table>
      <tr>
        <td><img id="imgshaddow" alt="포켓몬 이미지" src="${img }" /></td>
      </tr>
    </table>
    <table>
      <tr>
        <td></td>
      </tr>
    </table>
    <table class="fightPage">
      <tr>
        <td class="hver">▶</td>
        <td class="test1">
          <button onclick="correct()">싸운다</button>
        </td>
        <td class="hver">▶</td>
        <td>
          <button onclick="plzhint()">아이템</button>
        </td>
      </tr>
    </table>
    <table class="fightPage">
      <tr>
        <td class="hver">▶</td>
        <td>
          <button onclick="location.reload()">포켓몬</button>
        </td>
        <td class="hver">▶</td>
        <td>
          <button onclick="history.back()">도망간다</button>
        </td>
      </tr>
    </table>
  </body>
</html>
