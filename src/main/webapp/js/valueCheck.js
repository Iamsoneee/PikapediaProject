function call() {
	let Name = document.querySelector("input[name='Name']");
	let UserName = document.querySelector("input[name='UserName']");
	let pw = document.querySelector("input[name='pw']");
	let PWConfirm = document.querySelector("input[name='PWConfirm']");
	let Email = document.querySelector("input[name='Email']");
	
	console.log(Name);
	console.log(UserName);
	console.log(pw);
	console.log(PWConfirm);
	console.log(Email);
	
	if(isEmpty(Name)) {
	alert('필수 입력 에러!');
	UserName.focus();
	
	return false;
	}
	
	if(isEmpty(UserName)) {
	alert('필수 입력 에러!');
	UserName.focus();
	
	return false;
	}
	
	if(isEmpty(pw)) {
	alert('필수 입력 에러!');
	pw.focus();
	
	return false;
	}
	
	if(isEmpty(PWConfirm)) {
	alert('필수 입력 에러!');
	PWConfirm.focus();
	
	return false;
	}
	
	if(isEmpty(Email)) {
	alert('필수 입력 에러!');
	Email.focus();
	
	return false;
	}
	
	if(lessThen(UserName, 3)){
		alert('최소 3자이상 입력해주십시오')
		UserName.focus();
		
		return false;
	}
	
	if(containKR(Name) ||
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
	
	if(equalPW(UserName,pw)){
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