package com.great.action;

import java.sql.Date;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;

import com.great.aoplog.SystemControllerLog;
import com.great.javabean.NEWS;
import com.great.mapper.NEWSMapper;

public class AddNewsAction {

	private String ntitle;
	private String ncontext;
	private String errMsg;
	
	@Resource
	private NEWSMapper mapper;
	
	@SystemControllerLog(description="添加行业动态")
	public String execute()
	{

		NEWS n = mapper.find(ntitle);
		if(n == null)
		{
		System.out.println(ncontext);
		    System.out.println(ntitle);
			NEWS news = new NEWS(); 
			news.setNtitle(ntitle);
			news.setNcontext(ncontext);
			news.setNdate(new Date(System.currentTimeMillis()));
			news.setNstate("正常");
			mapper.insert(news);
			
			return "success";
		}else{
			errMsg="已存在";
			return "err";
		}
		
	}

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

	public NEWSMapper getMapper() {
		return mapper;
	}

	public void setMapper(NEWSMapper mapper) {
		this.mapper = mapper;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
	
}
