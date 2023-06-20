// Wait for the DOM to be loaded
document.addEventListener('DOMContentLoaded', function() {
  // Get the dark mode toggle button and moon icon
  var darkModeToggle = document.getElementById('dark-mode-toggle');
  var moonIcon = darkModeToggle.querySelector('img');

  // Add a click event listener to the button
  darkModeToggle.addEventListener('click', function(e) {
    e.preventDefault();

  // Toggle the dark mode class on the body element
    document.body.classList.toggle('dark-mode');

    // Toggle the dark mode class on the moon icon
    moonIcon.classList.toggle('dark-mode');
  });
});