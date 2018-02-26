package com.great.javabean;

import java.sql.Date;

public class NEWS {

    private String ntitle;
    private String ncontext;
    private Date ndate;
    private String nstate;
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontext() {
		return ncontext;
	}
	public void setNcontext(String ncontext) {
		this.ncontext = ncontext;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public String getNstate() {
		return nstate;
	}
	public void setNstate(String nstate) {
		this.nstate = nstate;
	}
}
