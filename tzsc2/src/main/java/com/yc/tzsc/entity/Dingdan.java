package com.yc.tzsc.entity;

import java.util.Date;

/**
 * 
 * @author LSY
 * 订单表
 */
public class Dingdan {
	private int did;					//订单编号
	private String dno;					//订单流水编号
	private int dcid;					//购买的商品id
	private String dcname;				//订单商品名称
	private String daddress;			//收货地址
	private String dusername;			//购买此商品用户
	private Date ddate = new Date();	//订单时间
	private double dmoney;				//此订单交易额
	private int dstate;					//此订单交易状态

	public Dingdan() {
	}

	public Dingdan(String dno, int dcid, String dcname, String daddress, String dusername, Date ddate, double dmoney,
			int dstate) {
		super();
		this.dno = dno;
		this.dcid = dcid;
		this.dcname = dcname;
		this.daddress = daddress;
		this.dusername = dusername;
		this.ddate = ddate;
		this.dmoney = dmoney;
		this.dstate = dstate;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDno() {
		return dno;
	}

	public void setDno(String dno) {
		this.dno = dno;
	}

	public int getDcid() {
		return dcid;
	}

	public void setDcid(int dcid) {
		this.dcid = dcid;
	}

	public String getDcname() {
		return dcname;
	}

	public void setDcname(String dcname) {
		this.dcname = dcname;
	}

	public String getDaddress() {
		return daddress;
	}

	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	public String getDusername() {
		return dusername;
	}

	public void setDusername(String dusername) {
		this.dusername = dusername;
	}

	public Date getDdate() {
		return ddate;
	}

	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}

	public double getDmoney() {
		return dmoney;
	}

	public void setDmoney(double dmoney) {
		this.dmoney = dmoney;
	}

	public int getDstate() {
		return dstate;
	}

	public void setDstate(int dstate) {
		this.dstate = dstate;
	}

	@Override
	public String toString() {
		return "Dingdan [did=" + did + ", dno=" + dno + ", dcid=" + dcid + ", dcname=" + dcname + ", daddress="
				+ daddress + ", dusername=" + dusername + ", ddate=" + ddate + ", dmoney=" + dmoney + ", dstate="
				+ dstate + "]";
	}
}
