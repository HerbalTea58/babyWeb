package com.baby.service;

import java.util.List;

import com.baby.entity.Advise;
import com.baby.entity.AdviseCla;
import com.baby.entity.AdviseReply;
import com.baby.entity.AdviseUse;

public interface AdviseService {
	
	//首页未答问题
	public List<AdviseUse> findNewQues();
	
	//首页新回答
	public List<AdviseUse> findNewReply();
	
	//通过id查询问题信息
	public Advise findAdById(Integer id);
	
	//通过id查询该问题的回答信息
	public List<AdviseReply> findReById(Integer id);
	
	//分类页新问题
	public List<AdviseCla> classifyNewQues(int tid);
	
	//分类页新回答
	public List<Advise> classifyNewRe(int tid);
	
	public Boolean addAdvise(int uid, String title, String con, int state, int type, String time);
	
	public Boolean addReply(int uid, int aid, String con, String time);
}
