package com.yc.tzsc.entity;
/**
 * 
 * @author LSY
 * 点击量
 */
public class Num {
	private int cid;	//指定商品
	private int nnum;	//点击量
	
	public Num() {
	}

	public Num(int cid, int nnum) {
		super();
		this.cid = cid;
		this.nnum = nnum;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getNnum() {
		return nnum;
	}

	public void setNnum(int nnum) {
		this.nnum = nnum;
	}

	@Override
	public String toString() {
		return "Num [cid=" + cid + ", nnum=" + nnum + "]";
	}
}
