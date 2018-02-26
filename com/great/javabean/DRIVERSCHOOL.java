package com.great.javabean;

import java.sql.Date;

public class DRIVERSCHOOL {

	private int dsid;
	private String dsname;
	private String dsbelongname;//所属教练名
	private String dsbelongphone;//学员联系电话
	private String dsstate;
	public int getDsid() {
		return dsid;
	}
	public void setDsid(int dsid) {
		this.dsid = dsid;
	}
	public String getDsname() {
		return dsname;
	}
	public void setDsname(String dsname) {
		this.dsname = dsname;
	}
	public String getDsbelongname() {
		return dsbelongname;
	}
	public void setDsbelongname(String dsbelongname) {
		this.dsbelongname = dsbelongname;
	}
	
	public String getDsbelongphone() {
		return dsbelongphone;
	}
	public void setDsbelongphone(String dsbelongphone) {
		this.dsbelongphone = dsbelongphone;
	}
	public String getDsstate() {
		return dsstate;
	}
	public void setDsstate(String dsstate) {
		this.dsstate = dsstate;
	}
	
	
	
	

    
}
