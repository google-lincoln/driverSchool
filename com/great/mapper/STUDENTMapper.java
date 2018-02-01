package com.great.mapper;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.STUDENT;

@MyBatisRepository
public interface STUDENTMapper {

	public STUDENT find();
}
