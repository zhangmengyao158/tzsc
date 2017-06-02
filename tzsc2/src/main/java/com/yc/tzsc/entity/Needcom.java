package com.yc.tzsc.entity;

import java.util.Date;

/**
 * 
 * @author LSY
 * 后续求购功能:
 */
public class Needcom {
	private int nid;			//求购信息编号
	private String nname;		//求购信息名称/标题
	private String ndescribe;	//求购商品描述
	private String npic;		//求购物品图片
	private String nusername;	//发布求购用户
	private String naddress;	//发布求购所在地
	private Date ndate = new Date();	//发布求购时间
	private int norder;					//求购信息审核状态
	private int	nmessage;				//管理员审核信息
	private String nadminname;			//操作此信息的管理员
	
	public Needcom() {
	}

	public Needcom(String nname, String ndescribe, String npic, String nusername, String naddress, Date ndate,
			int norder, int nmessage, String nadminname) {
		super();
		this.nname = nname;
		this.ndescribe = ndescribe;
		this.npic = npic;
		this.nusername = nusername;
		this.naddress = naddress;
		this.ndate = ndate;
		this.norder = norder;
		this.nmessage = nmessage;
		this.nadminname = nadminname;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	public String getNdescribe() {
		return ndescribe;
	}

	public void setNdescribe(String ndescribe) {
		this.ndescribe = ndescribe;
	}

	public String getNpic() {
		return npic;
	}

	public void setNpic(String npic) {
		this.npic = npic;
	}

	public String getNusername() {
		return nusername;
	}

	public void setNusername(String nusername) {
		this.nusername = nusername;
	}

	public String getNaddress() {
		return naddress;
	}

	public void setNaddress(String naddress) {
		this.naddress = naddress;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public int getNorder() {
		return norder;
	}

	public void setNorder(int norder) {
		this.norder = norder;
	}

	public int getNmessage() {
		return nmessage;
	}

	public void setNmessage(int nmessage) {
		this.nmessage = nmessage;
	}

	public String getNadminname() {
		return nadminname;
	}

	public void setNadminname(String nadminname) {
		this.nadminname = nadminname;
	}

	@Override
	public String toString() {
		return "Needcom [nid=" + nid + ", nname=" + nname + ", ndescribe=" + ndescribe + ", npic=" + npic
				+ ", nusername=" + nusername + ", naddress=" + naddress + ", ndate=" + ndate + ", norder=" + norder
				+ ", nmessage=" + nmessage + ", nadminname=" + nadminname + "]";
	}
}
