package com.great.action;


import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.great.javabean.NEWS;
import com.great.mapper.NEWSMapper;

@Controller
public class NewsAction {

	private List<NEWS> list;
	@Resource
	private NEWSMapper mapper;
	
	public String execute()
	{
		list = mapper.findAll();
		return "success";
	}
	
	public List<NEWS> getList() {
		return list;
	}

	public void setList(List<NEWS> list) {
		this.list = list;
	}

	public NEWSMapper getMapper() {
		return mapper;
	}
	public void setMapper(NEWSMapper mapper) {
		this.mapper = mapper;
	}
	
	
	
}
