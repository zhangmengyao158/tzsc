package com.yc.tzsc.entity;

public class SMixType {
	private int smid;
	private int mid;
	private String smname;
	public int getSmid() {
		return smid;
	}
	public void setSmid(int smid) {
		this.smid = smid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getSmname() {
		return smname;
	}
	public void setSmname(String smname) {
		this.smname = smname;
	}
	@Override
	public String toString() {
		return "SMixType [smid=" + smid + ", mid=" + mid + ", smname=" + smname + "]";
	}
}
