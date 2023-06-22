package com.pikapedia.db;

public class Pokemon {
	private String no;
	private String name;
	private double height;
	private double weight;
	private String type1;
	private String type2;
	private String des;
	private String frontDefault;
	private String backDefault;
	private String frontShiny;
	private String backShiny;
	
	public Pokemon() {
		// TODO Auto-generated constructor stub
	}

	public Pokemon(String no, String name, double height, double weight, String type1, String type2, String des,
			String frontDefault, String backDefault, String frontShiny, String backShiny) {
		super();
		this.no = no;
		this.name = name;
		this.height = height;
		this.weight = weight;
		this.type1 = type1;
		this.type2 = type2;
		this.des = des;
		this.frontDefault = frontDefault;
		this.backDefault = backDefault;
		this.frontShiny = frontShiny;
		this.backShiny = backShiny;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getFrontDefault() {
		return frontDefault;
	}

	public void setFrontDefault(String frontDefault) {
		this.frontDefault = frontDefault;
	}

	public String getBackDefault() {
		return backDefault;
	}

	public void setBackDefault(String backDefault) {
		this.backDefault = backDefault;
	}

	public String getFrontShiny() {
		return frontShiny;
	}

	public void setFrontShiny(String frontShiny) {
		this.frontShiny = frontShiny;
	}

	public String getBackShiny() {
		return backShiny;
	}

	public void setBackShiny(String backShiny) {
		this.backShiny = backShiny;
	}

	@Override
	public String toString() {
		return "Pokemon [no=" + no + ", name=" + name + ", height=" + height + ", weight=" + weight + ", type1=" + type1
				+ ", type2=" + type2 + ", des=" + des + ", frontDefault=" + frontDefault + ", backDefault="
				+ backDefault + ", frontShiny=" + frontShiny + ", backShiny=" + backShiny + "]";
	}

	
	
	
	
}

