package com.great.action;

import javax.annotation.Resource;

import com.great.javabean.FRIENDLINK;
import com.great.mapper.FRIENDLINKMapper;

public class AddFriendLinkAction {

	private String fname;
	private String web;
	
	@Resource
	private FRIENDLINKMapper mapper;
	
	public String execute()
	{
		FRIENDLINK link = new FRIENDLINK();
		link.setFname(fname);
		link.setWeb(web);
		link.setStatus("Õý³£");
		System.out.println(mapper);
		mapper.insert(link);
		return "success";
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public FRIENDLINKMapper getMapper() {
		return mapper;
	}

	public void setMapper(FRIENDLINKMapper mapper) {
		this.mapper = mapper;
	}
	
	
}
