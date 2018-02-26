package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.DRIVERSCHOOL;

@MyBatisRepository
public interface DRIVERSCHOOLMapper {
	public List<DRIVERSCHOOL> yuanguan_findDS();
	public void yuanguan_insert(DRIVERSCHOOL driverschool);
}
