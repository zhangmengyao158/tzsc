package com.yc.tzsc.entity;
/**
 * 
 * @author LSY
 * 商品小类型分类: 手机,电脑等
 *	( 此表为管理员后台可操作 )
 */
public class MinType {
	private int mid;
	private int tid;	//此处id引用t_type总类型表中的id
	private String mname;	//类型名称
	
	public MinType() {
	}

	public MinType(int tid, String mname) {
		super();
		this.tid = tid;
		this.mname = mname;
	}

	
	
	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	@Override
	public String toString() {
		return "MinType [mid=" + mid + ", tid=" + tid + ", mname=" + mname + "]";
	}
}
