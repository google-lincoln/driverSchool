package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.DSAPPLY;

@MyBatisRepository
public interface DSAPPLYMapper {
	public List<DSAPPLY> finddsapply();
	public List<DSAPPLY> finddsapply2();
	public void updateapply(DSAPPLY dsapply);
	
}
