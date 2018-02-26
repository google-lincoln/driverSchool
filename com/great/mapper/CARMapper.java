package com.great.mapper;

import java.util.List;

import com.great.annotation.MyBatisRepository;
import com.great.javabean.CAR;


@MyBatisRepository
public interface CARMapper {
	public List<CAR> yunguan_findC();
}
