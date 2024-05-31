package com.web.bean;


public class Test {
	private int paperid;
	private int userid;
	private double la;
	private double ra;
	private String date;
	
	public Test(int paperid, int userid, double la, double ra, String date) {
		super();
		this.paperid = paperid;
		this.userid = userid;
		this.la = la;
		this.ra = ra;
		this.date = date;
	}
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public double getLa() {
		return la;
	}
	public void setLa(double la) {
		this.la = la;
	}
	public double getRa() {
		return ra;
	}
	public void setRa(double ra) {
		this.ra = ra;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
}
