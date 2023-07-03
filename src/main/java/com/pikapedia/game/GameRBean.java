package com.pikapedia.game;

public class GameRBean {
    private int r_no;
    private String r_id;
    
    public GameRBean() {
        // 생성자
    }
    
    public GameRBean(int r_no, String r_id) {
        this.r_no = r_no;
        this.r_id = r_id;
    }
    
    public int getR_no() {
        return r_no;
    }
    
    public void setR_no(int r_no) {
        this.r_no = r_no;
    }
    
    public String getR_id() {
        return r_id;
    }
    
    public void setR_id(String r_id) {
        this.r_id = r_id;
    }
}
