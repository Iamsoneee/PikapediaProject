package com.pikapedia.game;

public class gamePokemon {
	private int p_no;
	private String p_name;
	private String p_frontDefault;
	public gamePokemon() {
		// TODO Auto-generated constructor stub
	}
	public gamePokemon(int p_no, String p_name, String p_frontDefault) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_frontDefault = p_frontDefault;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_frontDefault() {
		return p_frontDefault;
	}
	public void setP_frontDefault(String p_frontDefault) {
		this.p_frontDefault = p_frontDefault;
	}
	@Override
	public String toString() {
		return "gamePokemon [p_no=" + p_no + ", p_name=" + p_name + ", p_frontDefault=" + p_frontDefault + "]";
	}
	
}
