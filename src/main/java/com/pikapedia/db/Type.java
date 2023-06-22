package com.pikapedia.db;

public class Type {
	private String typeNameKo;
	private String typeNameJa;
	private String typeNameEn;
	private String typeColor;
	private String typeImg;
	
	public Type() {
		// TODO Auto-generated constructor stub
	}

	public Type(String typeNameKo, String typeNameJa, String typeNameEn, String typeColor, String typeImg) {
		super();
		this.typeNameKo = typeNameKo;
		this.typeNameJa = typeNameJa;
		this.typeNameEn = typeNameEn;
		this.typeColor = typeColor;
		this.typeImg = typeImg;
	}

	public String getTypeNameKo() {
		return typeNameKo;
	}

	public void setTypeNameKo(String typeNameKo) {
		this.typeNameKo = typeNameKo;
	}

	public String getTypeNameJa() {
		return typeNameJa;
	}

	public void setTypeNameJa(String typeNameJa) {
		this.typeNameJa = typeNameJa;
	}

	public String getTypeNameEn() {
		return typeNameEn;
	}

	public void setTypeNameEn(String typeNameEn) {
		this.typeNameEn = typeNameEn;
	}

	public String getTypeColor() {
		return typeColor;
	}

	public void setTypeColor(String typeColor) {
		this.typeColor = typeColor;
	}

	public String getTypeImg() {
		return typeImg;
	}

	public void setTypeImg(String typeImg) {
		this.typeImg = typeImg;
	}

	@Override
	public String toString() {
		return "Type [typeNameKo=" + typeNameKo + ", typeNameJa=" + typeNameJa + ", typeNameEn=" + typeNameEn
				+ ", typeColor=" + typeColor + ", typeImg=" + typeImg + "]";
	}
	
	
	
	
	
}
