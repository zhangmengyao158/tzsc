package com.yc.tzsc.entity;

import java.util.Date;

/**
 * 
 * @author LSY
 * 商品留言表
 */
public class Comments {
	private int comid;					//商品留言信息id
	private int comcid;					//指定商品id, ( 哪一个商品的留言 )
	private String comusername;			//发表留言评论的用户
	private String comcontent;			//发表的内容
	private Date comdate = new Date();	//发表评论的时间
	 
	
	public Comments() {
	}

	public Comments(int comcid, String comcontent, String comusername, Date comdate) {
 		this.comcid = comcid;
		this.comcontent = comcontent;
		this.comusername = comusername;
		this.comdate = comdate;
	}

	public int getComid() {
		return comid;
	}

	public void setComid(int comid) {
		this.comid = comid;
	}

	public int getComcid() {
		return comcid;
	}

	public void setComcid(int comcid) {
		this.comcid = comcid;
	}

	public String getComcontent() {
		return comcontent;
	}

	public void setComcontent(String comcontent) {
		this.comcontent = comcontent;
	}

	public String getComusername() {
		return comusername;
	}

	public void setComusername(String comusername) {
		this.comusername = comusername;
	}

	public Date getComdate() {
		return comdate;
	}

	public void setComdate(Date comdate) {
		this.comdate = comdate;
	}

	@Override
	public String toString() {
		return "Comments [comid=" + comid + ", comcid=" + comcid + ", comcontent=" + comcontent + ", comusername="
				+ comusername + ", comdate=" + comdate + "]";
	}
}
