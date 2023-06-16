package com.pikapedia.serach;

public class Poketmon {
	private int p_no;
	private String p_name;
	private double p_height;
	private double p_weight;
	private String p_type1;
	private String p_type2;
	private String p_des;
	private String p_frontDefault;
	private String p_backDefault;
	private String p_frontShiny;
	private String p_backShiny;
	
	public Poketmon(int p_no, String p_name, double p_height, double p_weight, String p_type1, String p_type2, String p_des, 
			String p_frontDefault, String p_backDefault,String p_frontShiny, String p_backShiny) {
		super();
		this.p_no = p_no;
		this.p_name=p_name;
		this.p_height=p_height;
		this.p_weight=p_weight;
		this.p_type1=p_type1;
		this.p_type2=p_type2;
		this.p_des=p_des;
		this.p_frontDefault=p_frontDefault;
		this.p_backDefault=p_backDefault;
		this.p_frontShiny=p_frontShiny;
		this.p_backShiny=p_backShiny;
		
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
	public double getP_height() {
		return p_height;
	}
	public void setP_height(double p_height) {
		this.p_height = p_height;
	}
	public double getP_weight() {
		return p_weight;
	}
	public void setP_weight(double p_weight) {
		this.p_weight = p_weight;
	}
	public String getP_type1() {
		return p_type1;
	}
	public void setP_type1(String p_type) {
		this.p_type1 = p_type;
	}
	public String getP_type2() {
		return p_type2;
	}
	public void setP_type2(String p_type2) {
		this.p_type2 = p_type2;
	}
	public String getP_des() {
		return p_des;
	}
	public void setP_des(String p_des) {
		this.p_des = p_des;
	}

	public String getP_frontDefault() {
		return p_frontDefault;
	}

	public void setP_frontDefault(String p_frontDefault) {
		this.p_frontDefault = p_frontDefault;
	}

	public String getP_backDefault() {
		return p_backDefault;
	}

	public void setP_backDefault(String p_backDefault) {
		this.p_backDefault = p_backDefault;
	}

	public String getP_frontShiny() {
		return p_frontShiny;
	}

	public void setP_frontShiny(String p_frontShiny) {
		this.p_frontShiny = p_frontShiny;
	}

	public String getP_backShiny() {
		return p_backShiny;
	}

	public void setP_backShiny(String p_backShiny) {
		this.p_backShiny = p_backShiny;
	}
	
}

	