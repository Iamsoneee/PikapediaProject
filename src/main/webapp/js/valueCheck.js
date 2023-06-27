function call() {
/*	let Name = document.querySelector("input[name='Name']");
	let UserName = document.querySelector("input[name='UserName']");
	let pw = document.querySelector("input[name='pw']");
	let PWConfirm = document.querySelector("input[name='PWConfirm']");
	let Email = document.querySelector("input[name='Email']");*/
	
	var Name = document.getElementById("Name");
	var UserName = document.getElementById("UserName");
	var pw = document.getElementById("pw");
	var PWConfirm = document.getElementById("PWConfirm");
	var Email = document.getElementById("Email");
	
	console.log(Name);
	console.log(UserName);
	console.log(pw);
	console.log(PWConfirm);
	console.log(Email);
	
	if(isEmpty(Name)) {
	alert('Name을 입력해주세요!');
	Name.focus();
	
	return false;
	}
	
	if(isEmpty(UserName)) {
	alert('UserName을 입력해주세요!');
	UserName.focus();
	
	return false;
	}
	
	if(isEmpty(pw)) {
	alert('비밀번호를 입력해주세요!');
	pw.focus();
	
	return false;
	}
	
	if(isEmpty(PWConfirm)) {
	alert('비밀번호 확인을 입력해주세요!');
	PWConfirm.focus();
	
	return false;
	}
	
	if(isEmpty(Email)) {
	alert('Email을 입력해주세요!');
	Email.focus();
	
	return false;
	}
	
	if(containKR(Name) ||
		lessThen(Name, 3)){
		alert('Name은 최소 3자이상 입력해주세요!')
		Name.focus();
		
		return false;
	}
	
	if(lessThen(UserName, 3)){
		alert('UserName은 최소 3자이상 입력해주세요!')
		UserName.focus();
		
		return false;
	}
	
	if(lessThan(pw, 3)) {
		alert('비밀번호는 최소 3자 이상 입력해주세요!');
		pw.focus()		
		
		return false;
	}
	
	if(equalPW(pw,PWConfirm)){
		alert('비밀번호가 일치하지 않습니다!');
		pw.focus();
		pw.value = "";
		PWConfirm.value = "";
		
		return false;
	}
	
	 if(notContains(pw, "qwertyuiopasdfghjklzxcvbnm") 
	 || notContains(pw, "1234567890")){
		alert('비밀번호에는 소문자, 숫자를 입력해주세요!');
		pw.focus();
		pw.value = ""
		PWConfirm.value = ""
		
		return false;
	 }
	
	
	
}