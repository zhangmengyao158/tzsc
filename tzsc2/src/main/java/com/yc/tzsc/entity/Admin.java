package com.yc.tzsc.entity;
/**
 * 
 * @author LSY
 * 管理员
 */
public class Admin {
	private int adminid;		//管理员编号
	private String adminname;	//管理员用户名
	private String apassword;	//管理员密码
	private String aphone;		//管理员电话
	private String aemail;		//管理员邮箱
	private int alevel;			//管理员权限等级
	
	public Admin() {
	}

	public Admin(String adminname, String apassword, String aphone, String aemail) {
		super();
		this.adminname = adminname;
		this.apassword = apassword;
		this.aphone = aphone;
		this.aemail = aemail;
	}

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	public String getAphone() {
		return aphone;
	}

	public void setAphone(String aphone) {
		this.aphone = aphone;
	}

	public String getAemail() {
		return aemail;
	}

	public void setAemail(String aemail) {
		this.aemail = aemail;
	}

	public int getAlevel() {
		return alevel;
	}

	public void setAlevel(int alevel) {
		this.alevel = alevel;
	}

	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", adminname=" + adminname + ", apassword=" + apassword + ", aphone="
				+ aphone + ", aemail=" + aemail + ", alevel=" + alevel + "]";
	}
	
}
