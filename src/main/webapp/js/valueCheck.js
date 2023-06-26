function call() {
	let Name = document.querySelector("input[name='Name']");
	let UserName = document.querySelector("input[name='User Name']");
	let pw = document.querySelector("input[name='PW']");
	let PWConfirm = document.querySelector("input[name='PW Confirm']");
	
	
	
	console.log(Name);
	console.log(UserName);
	console.log(pw);
	console.log(PWConfirm);
	
	if(isEmpty(UserName)) {
	alert('필수 입력 에러!');
	UserName.focus();
	
	return false;
	}
	
	if(	containKR(Name) ||
		lessThen(Name, 3)){
		alert('최소 3자이상 입력해주십시오')
		Name.focus();
		return false;
	}
	
	

	
	if(equalPW(pw,PWConfirm)){
		alert('비밀번호가 일치하지 않습니다!');
		pw.focus();
		pw.value = "";
		PWConfirm.value = "";
		return false;
	}
	if(lessThan(pw, 3)) {
		alert('최소 3자이상 입력해주십시오');
		pw.focus()		
		return false;
	}
	
	 if(notContains(pw, "qwertyuiopasdfghjklzxcvbnm") 
	 || notContains(pw, "1234567890")){
		alert('소문자, 숫자를 입력해주십시오');
		pw.focus();
		pw.value = ""
		PWConfirm.value = ""
		return false;
	 }
	
	
	
}