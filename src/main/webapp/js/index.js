$(document).ready(function () {
  var darkModeEnabled = false;

  $("#dark-mode-toggle").click(function () {
    darkModeEnabled = true;
    enableDarkMode();
  });

  $("#bright-mode-toggle").click(function () {
    darkModeEnabled = false;
    enableBrightMode();
  });

  function enableDarkMode() {
    $("body").addClass("dark-mode");
  }

  function enableBrightMode() {
    $("body").removeClass("dark-mode");
  }
});
