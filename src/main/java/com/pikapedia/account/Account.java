package com.pikapedia.account;

public class Account {
	private String name;
	private String id;
	private String pw;
	private String email;
	private String img;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(String name, String id, String pw, String email, String img) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	
}
