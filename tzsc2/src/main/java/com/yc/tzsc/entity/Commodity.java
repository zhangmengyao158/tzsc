package com.yc.tzsc.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author LSY
 * 商品发布详情表( 商品详情 )
 */
public class Commodity implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int cid;					//商品编号
	private String cname;				//商品名称
	private String ctname;				//商品总分类
	private String cdescribe;			//商品描述
	private String cpic;				//商品图片( 可多张, 以 ; 分隔 )
	private double cprice;				//商品出售价格
	private String cusername;			//发布商品的用户
	private String caddress;			//发布求购所在地
	private String cphone;				//商家联系电话	
	private int cpostage;				//是否包邮
	private String cqq;					//商家qq
	private Date cdate = new Date();	//发布商品时间
	private int cstate_com;				//商品交易状态 	1.未交易	2.已交易
	private	int cstate_dingdan;			//订单审核状态
	private String cmessage;			//管理员审核信息
	private String cadminname;			//操作此订单管理员
	
	public Commodity() {
	}

	public Commodity(int cid, String cname, String ctname, String cdescribe, String cpic, double cprice,
			String cusername, String caddress, String cphone, int cpostage, String cqq, Date cdate, int cstate_com,
			int cstate_dingdan, String cmessage, String cadminname) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.ctname = ctname;
		this.cdescribe = cdescribe;
		this.cpic = cpic;
		this.cprice = cprice;
		this.cusername = cusername;
		this.caddress = caddress;
		this.cphone = cphone;
		this.cpostage = cpostage;
		this.cqq = cqq;
		this.cdate = cdate;
		this.cstate_com = cstate_com;
		this.cstate_dingdan = cstate_dingdan;
		this.cmessage = cmessage;
		this.cadminname = cadminname;
	}



	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtname() {
		return ctname;
	}

	public void setCtname(String ctname) {
		this.ctname = ctname;
	}

	public String getCdescribe() {
		return cdescribe;
	}

	public void setCdescribe(String cdescribe) {
		this.cdescribe = cdescribe;
	}

	public String getCpic() {
		return cpic;
	}

	public void setCpic(String cpic) {
		this.cpic = cpic;
	}

	public double getCprice() {
		return cprice;
	}

	public void setCprice(double cprice) {
		this.cprice = cprice;
	}

	public String getCusername() {
		return cusername;
	}

	public void setCusername(String cusername) {
		this.cusername = cusername;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public int getCpostage() {
		return cpostage;
	}

	public void setCpostage(int cpostage) {
		this.cpostage = cpostage;
	}

	public String getCqq() {
		return cqq;
	}

	public void setCqq(String cqq) {
		this.cqq = cqq;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public int getCstate_com() {
		return cstate_com;
	}

	public void setCstate_com(int cstate_com) {
		this.cstate_com = cstate_com;
	}

	public int getCstate_dingdan() {
		return cstate_dingdan;
	}

	public void setCstate_dingdan(int cstate_dingdan) {
		this.cstate_dingdan = cstate_dingdan;
	}

	public String getCmessage() {
		return cmessage;
	}

	public void setCmessage(String cmessage) {
		this.cmessage = cmessage;
	}

	public String getCadminname() {
		return cadminname;
	}

	public void setCadminname(String cadminname) {
		this.cadminname = cadminname;
	}

	@Override
	public String toString() {
		return "Commodity [cid=" + cid + ", cname=" + cname + ", ctname=" + ctname + ", cdescribe=" + cdescribe
				+ ", cpic=" + cpic + ", cprice=" + cprice + ", cusername=" + cusername + ", caddress=" + caddress
				+ ", cphone=" + cphone + ", cpostage=" + cpostage + ", cqq=" + cqq + ", cdate=" + cdate
				+ ", cstate_com=" + cstate_com + ", cstate_dingdan=" + cstate_dingdan + ", cmessage=" + cmessage
				+ ", cadminname=" + cadminname + "]";
	}
}
