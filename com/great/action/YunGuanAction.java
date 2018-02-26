package com.great.action;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.great.aoplog.SystemControllerLog;
import com.great.javabean.ANNOUNCEMENT;
import com.great.javabean.DRIVERSCHOOL;
import com.great.javabean.DSAPPLY;
import com.great.javabean.DSPUNISH;
import com.great.mapper.ANNOUNCEMENTMapper;
import com.great.mapper.DRIVERSCHOOLMapper;
import com.great.mapper.DSAPPLYMapper;
import com.great.mapper.DSPUNISHMapper;

@Controller
public class YunGuanAction {
	private Map<String, Object> info =new HashMap<String, Object>(); // 提示信息
	private String posttitle;
	private String postcontext;
	private String p0;
	private String p1;
	private String p2;
	private String p3;
	private String pname;

	private List<ANNOUNCEMENT> anceList=null;
	private List<DRIVERSCHOOL> dsList=null;
	private List<DRIVERSCHOOL> dsList2=null;
	private List<DSAPPLY> applyList=null;
	private List<DSAPPLY> applyList2=null;
	
	
	private String deletitle;
	private String updatetitle;
	private String updatecontext;
	private String oddtitle;
	
	private String applyname;
	private String applyphone;
	private String applylp;
	
	@Resource
	private ANNOUNCEMENTMapper mapper;
	
	@Resource
	private DRIVERSCHOOLMapper DSmapper;
	
	@Resource
	private DSPUNISHMapper punishmapper;
	
	@Resource
	private DSAPPLYMapper applymapper;
//	发布公告
	@SystemControllerLog(description="发布公告")
	public String post(){
//		System.out.println(posttitle+"~"+postcontext);
		Date currentDate = new java.sql.Date(System.currentTimeMillis());
		ANNOUNCEMENT announce = new ANNOUNCEMENT();
		announce.setAtitle(posttitle);
		announce.setAcontext(postcontext);
		announce.setAstate("正常");
		announce.setAdate(currentDate);
		mapper.addAnnounce(announce);
		System.out.println("123");
		return "success";
		}
//	删除公告
	@SystemControllerLog(description="删除公告")
	public String deleteA(){
//		System.out.println("999");
//		System.out.println(deletitle);
		mapper.deleteA(deletitle);
		return "success";
		}
//	更新公告
	@SystemControllerLog(description="更新公告")
	public String updateA(){
//		System.out.println("updatetitle"+updatetitle);
//		System.out.println("updatecontext"+updatecontext);
//		System.out.println("oddtitle"+oddtitle);
		ANNOUNCEMENT announcement = new ANNOUNCEMENT();
		announcement.setAstate(oddtitle);
		announcement.setAcontext(updatecontext);
		announcement.setAtitle(updatetitle);
		mapper.updateA(announcement);
		return "success";
		}
//	获取公告列表
	@SystemControllerLog(description="查询公告列表")
	public String announcementlist(){
		anceList=mapper.findA();
		return "success";
		}
//	获取驾校列表
	@SystemControllerLog(description="查询驾校列表")
	public String DSlist(){
		dsList=DSmapper.yuanguan_findDS();
		return "success";
		}
//	获取驾校列表2
	@SystemControllerLog(description="查询驾校列表")
	public String DSlist2(){
		dsList2=DSmapper.yuanguan_findDS();
		return "success";
		}
//	处罚
	@SystemControllerLog(description="驾校处罚")
	public String punish(){
//		System.out.println(p0);
//		System.out.println(p2);
//		System.out.println(p3);
		Date currentDate = new java.sql.Date(System.currentTimeMillis());
//		System.out.println(currentDate);
		DSPUNISH dspunish = new DSPUNISH();
		dspunish.setDsname(p0);
		dspunish.setPunishtype(p1);
		dspunish.setPunishresult(p2);
		dspunish.setPunishreason(p3);
		dspunish.setPunishdate(currentDate);
		punishmapper.addDspunish(dspunish);
		return "success";
		}
//	获取申请列表
	@SystemControllerLog(description="查询驾校开通申请表")
	public String applylist(){
		applyList=applymapper.finddsapply();
		applyList2=applymapper.finddsapply2();
		return "success";
		}
//	通过申请
	@SystemControllerLog(description="驾校申请通过")
	public String passapply(){
		Date currentDate = new java.sql.Date(System.currentTimeMillis());
		DRIVERSCHOOL driverschool = new DRIVERSCHOOL();
		driverschool.setDsbelongname(applylp);
		driverschool.setDsname(applyname);
		driverschool.setDsbelongphone(applyphone);
		/*driverschool.setDsid(2000);*/
		driverschool.setDsstate("正常");
		DSmapper.yuanguan_insert(driverschool);		
	
		DSAPPLY dsapply = new DSAPPLY();
		dsapply.setRevieweddate(currentDate);
		dsapply.setApplyresult("通过");
		dsapply.setApplyremark("已审核");
		dsapply.setDsname(applyname);
		applymapper.updateapply(dsapply);
		applyList=applymapper.finddsapply();
		return "success";
		}
//	拒绝申请
	@SystemControllerLog(description="拒绝驾校申请")
	public String refuseapply(){
		Date currentDate = new java.sql.Date(System.currentTimeMillis());
		DSAPPLY dsapply = new DSAPPLY();
		dsapply.setRevieweddate(currentDate);
		dsapply.setApplyresult("未通过");
		dsapply.setApplyremark("已审核");
		dsapply.setDsname(applyname);
		applymapper.updateapply(dsapply);
		applyList=applymapper.finddsapply();
		return "success";
		}
//	登录到运管首页
	@SystemControllerLog(description="登录运管端")
	public String y(){
		return "success";
		}
	
	
	
	public List<DRIVERSCHOOL> getDsList2() {
		return dsList2;
	}
	public void setDsList2(List<DRIVERSCHOOL> dsList2) {
		this.dsList2 = dsList2;
	}
	public List<DSAPPLY> getApplyList2() {
		return applyList2;
	}
	public void setApplyList2(List<DSAPPLY> applyList2) {
		this.applyList2 = applyList2;
	}
	public String getApplyphone() {
		return applyphone;
	}
	public void setApplyphone(String applyphone) {
		this.applyphone = applyphone;
	}
	public String getApplylp() {
		return applylp;
	}
	public void setApplylp(String applylp) {
		this.applylp = applylp;
	}
	public String getApplyname() {
		return applyname;
	}
	public void setApplyname(String applyname) {
		this.applyname = applyname;
	}
	public List<DSAPPLY> getApplyList() {
		return applyList;
	}
	public void setApplyList(List<DSAPPLY> applyList) {
		this.applyList = applyList;
	}
	public String getPosttitle() {
		return posttitle;
	}
	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}
	public String getPostcontext() {
		return postcontext;
	}
	public void setPostcontext(String postcontext) {
		this.postcontext = postcontext;
	}
	public ANNOUNCEMENTMapper getMapper() {
		return mapper;
	}
	public void setMapper(ANNOUNCEMENTMapper mapper) {
		this.mapper = mapper;
	}
	public Map<String, Object> getInfo() {
		return info;
	}
	public void setInfo(Map<String, Object> info) {
		this.info = info;
	}
	
	public List<ANNOUNCEMENT> getAnceList() {
		return anceList;
	}
	public void setAnceList(List<ANNOUNCEMENT> anceList) {
		this.anceList = anceList;
	}
	public List<DRIVERSCHOOL> getDsList() {
		return dsList;
	}
	public void setDsList(List<DRIVERSCHOOL> dsList) {
		this.dsList = dsList;
	}
	public DRIVERSCHOOLMapper getDSmapper() {
		return DSmapper;
	}
	public void setDSmapper(DRIVERSCHOOLMapper dSmapper) {
		DSmapper = dSmapper;
	}
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	public String getP3() {
		return p3;
	}
	public void setP3(String p3) {
		this.p3 = p3;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDeletitle() {
		return deletitle;
	}
	public void setDeletitle(String deletitle) {
		this.deletitle = deletitle;
	}
	public String getUpdatetitle() {
		return updatetitle;
	}
	public void setUpdatetitle(String updatetitle) {
		this.updatetitle = updatetitle;
	}
	public String getUpdatecontext() {
		return updatecontext;
	}
	public void setUpdatecontext(String updatecontext) {
		this.updatecontext = updatecontext;
	}
	public String getOddtitle() {
		return oddtitle;
	}
	public void setOddtitle(String oddtitle) {
		this.oddtitle = oddtitle;
	}
	public String getP0() {
		return p0;
	}
	public void setP0(String p0) {
		this.p0 = p0;
	}
	
	
	
	
	
	
	
}
