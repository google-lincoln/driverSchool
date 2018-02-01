package com.great.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.great.javabean.STUDENT;
import com.great.mapper.STUDENTMapper;
@Controller
public class StudnetLoginAction {

	private STUDENT manager;
	
	@Resource
	private STUDENTMapper mapper;
	
	public String execute(){
		
		manager = mapper.find();
		
		if(manager != null){
			return "success";
		}else{
			return "err";
		}
		
	}

	public STUDENT getManager() {
		return manager;
	}

	public void setManager(STUDENT manager) {
		this.manager = manager;
	}

	
	
}
