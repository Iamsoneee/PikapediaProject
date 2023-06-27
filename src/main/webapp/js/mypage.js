function Signout() {
	let ok = confirm('정말로 탈퇴합니까?');
	if (ok) {
		location.href='SignoutC';
	}
}
