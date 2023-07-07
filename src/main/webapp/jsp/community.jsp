<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>community</title>
    <link rel="stylesheet" href="css/community.css" />
    <link rel="stylesheet" href="css/pokedexFrame.css" />
  </head>
  <body>
    <div id="pokedex-wrapper">
      <div id="pokedex-red-frame">
        <div id="pokedex-circles">
          <img src="img/pokedex-circles.png" alt="" />
        </div>
        <div id="pokedex-blue-shadow">
          <div id="pokedex-blue-frame" class="iframe-wrapper">
            <h1 align="center"></h1>
            <iframe
              id="iframe"
              src="https://pikapedia-live-chat.azurewebsites.net/"
              width="100%"
              height="550"
            ></iframe>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
