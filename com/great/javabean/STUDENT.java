package com.great.javabean;

import java.sql.Date;

public class STUDENT {

	private int sid;
	private String sname;
	private int sphone;//ѧԱ��ϵ�绰
    private Date date;//ע��ʱ��
    private String cname;//����������
    private String dsname;//������У��
    private String username;
    private String password;
    
    
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSphone() {
		return sphone;
	}
	public void setSphone(int sphone) {
		this.sphone = sphone;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getDsname() {
		return dsname;
	}
	public void setDsname(String dsname) {
		this.dsname = dsname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
	
}