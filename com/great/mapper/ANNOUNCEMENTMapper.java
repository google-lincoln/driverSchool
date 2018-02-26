package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.DSPUNISH;
import com.great.javabean.STUDENT;

@MyBatisRepository
public interface ANNOUNCEMENTMapper {
	public ANNOUNCEMENT addAnnounce(ANNOUNCEMENT announcement);
	public List<ANNOUNCEMENT> findA();
	public void deleteA(String deletetitle);
	public void updateA(ANNOUNCEMENT announcement);
	public DSPUNISH addDspunish(DSPUNISH dspunish);
}
