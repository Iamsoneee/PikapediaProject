function handleKeyPress(event) {
  if (event.keyCode === 13) { // Enter 키를 눌렀을 때
    event.preventDefault(); // 기본 동작(페이지 새로고침) 방지
    performSearch();
    document.getElementById("attackBtn").click(); // "공격하기" 버튼 클릭
  }
}

function performSearch() {
  var searchTerm = document.getElementById('search-input').value;
  console.log('검색어:', searchTerm);
  // 예시로 검색어를 콘솔에 출력합니다.
}
