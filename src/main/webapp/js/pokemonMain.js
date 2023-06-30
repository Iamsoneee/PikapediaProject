function handleKeyPress(event) {
  if (event.keyCode === 13) { // Enter 키를 눌렀을 때
    event.preventDefault(); // 기본 동작(페이지 새로고침) 방지
 	checkPokemon();
  }
}

function performSearch() {
  var searchTerm = document.getElementById('search-input').value;
  console.log('검색어:', searchTerm);
  // 예시로 검색어를 콘솔에 출력합니다.
}


function checkPokemon(){
	let search = $("#search-input").val();
	let lang = $("#lang").val();
	console.log(search);
	console.log(lang);
	let str = 'ポケモン名、または番号再確認してください。';
	if(lang == 'ko' || lang == ""){
		str = "포켓몬 이름, 또는 번호 재확인 해주세요";
	}
	
	$.ajax({
		url : 'CheckPokemon',
		data : {search,lang},
		dataType: "text",
		success : function(data){
			console.log(data)
			if(data == '1'){
			$("#searchForm").submit();
			}else{
				alert(str)
				$("#search-input").val("");
			}
		}
	
		
	});
	
	
	
}