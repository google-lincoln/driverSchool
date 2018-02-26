package com.great.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.great.javabean.FRIENDLINK;
import com.great.mapper.FRIENDLINKMapper;

@Controller
public class FriendLinkAction {

	private List<FRIENDLINK> list;
	@Resource
	private FRIENDLINKMapper mapper;
    
    public String execute()
    {
    	list = mapper.findAll();
    	return "success";
    }

	public List<FRIENDLINK> getList() {
		return list;
	}

	public void setList(List<FRIENDLINK> list) {
		this.list = list;
	}

	public FRIENDLINKMapper getMapper() {
		return mapper;
	}

	public void setMapper(FRIENDLINKMapper mapper) {
		this.mapper = mapper;
	}
    
    
}
