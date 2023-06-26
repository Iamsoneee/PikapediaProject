// ************ DARK MODE JS ************

document.addEventListener("DOMContentLoaded", function() {
	var body = document.body;
	var moonIcon = document.getElementById("dark-mode-toggle");
	var sunIcon = document.getElementById("bright-mode-toggle");

	// 로컬 스토리지에서 다크 모드 설정을 가져옵니다.
	var isDarkMode = localStorage.getItem("darkMode");

	// 페이지 로드 시 이전에 저장된 다크 모드 설정을 확인하고 적용합니다.
	if (isDarkMode === "true") {
		body.classList.add("dark-mode");
		moonIcon.setAttribute("src", "img/icon/moon-icon-active.png");
		sunIcon.setAttribute("src", "img/icon/sun-icon.png");
	}

	moonIcon.addEventListener("click", function() {
		// 다크 모드 설정을 로컬 스토리지에 저장합니다.
		localStorage.setItem("darkMode", "true");

		body.classList.add("dark-mode");
		moonIcon.setAttribute("src", "img/icon/moon-icon-active.png");
		sunIcon.setAttribute("src", "img/icon/sun-icon.png");
	});

	sunIcon.addEventListener("click", function() {
		// 다크 모드 설정을 로컬 스토리지에서 제거합니다.
		event.preventDefault(); // 클릭 이벤트의 기본 동작 중지
		localStorage.removeItem("darkMode");

		body.classList.remove("dark-mode");
		moonIcon.setAttribute("src", "img/icon/moon-icon.svg");
		sunIcon.setAttribute("src", "img/icon/sun-icon-active.png");
	});

	/* Drop Down Menu JS */

	const dropIcon = document.querySelector('.drop-icon-img');
	const dropMenu = document.querySelector('.drop-menu');
	dropIcon.addEventListener('click', () => {
		event.preventDefault(); // 새로고침 방지
		dropMenu.classList.toggle('active');
		if (dropMenu.classList.contains('active')) {
			dropMenu.style.maxHeight = dropMenu.scrollHeight + 'px';
		} else {
			dropMenu.style.maxHeight = '0';
		}
	});

	dropMenu.addEventListener('mouseleave', () => {
		dropMenu.classList.remove('active');
		dropMenu.style.maxHeight = '0';
	});

});
