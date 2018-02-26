package com.great.mapper;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.DSPUNISH;

@MyBatisRepository
public interface DSPUNISHMapper {
	public DSPUNISH addDspunish(DSPUNISH dspunish);
}
