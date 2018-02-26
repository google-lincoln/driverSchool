package com.great.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.great.aoplog.SystemControllerLog;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.CAR;
import com.great.javabean.COACH;
import com.great.javabean.STUDENT;
import com.great.mapper.CARMapper;
import com.great.mapper.COACHMapper;
import com.great.mapper.DSAPPLYMapper;
import com.great.mapper.STUDENTMapper;

@Controller
public class YunGuanAction2 {
	private List<CAR> carList=null;
	private List<COACH> coachList=null;
	private List<STUDENT> studentList=null;

	@Resource
	private CARMapper carmapper;
	@Resource
	private COACHMapper coachmapper;
	@Resource
	private STUDENTMapper studentmapper;
//	��ȡ�������б�
	@SystemControllerLog(description="��ѯ�������б�")
	public String carlist(){
		carList=carmapper.yunguan_findC();
		return "success";
		}
//	��ȡ������Ϣ�б�
	@SystemControllerLog(description="��ѯ������Ϣ�б�")
	public String coachlist(){
		coachList=coachmapper.yunguan_findCoach();
		return "success";
		}
//	��ȡѧ����Ϣ�б�
	@SystemControllerLog(description="��ѯѧ����Ϣ�б�")
	public String studentlist(){
		studentList=studentmapper.find();
		return "success";
		}
	public List<CAR> getCarList() {
		return carList;
	}
	public void setCarList(List<CAR> carList) {
		this.carList = carList;
	}
	public List<COACH> getCoachList() {
		return coachList;
	}
	public void setCoachList(List<COACH> coachList) {
		this.coachList = coachList;
	}
	
	 
}

