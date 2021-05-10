package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.ReportAdviseQues;
import com.baby.entity.ReportCom;

public interface ManageMapper {
	
	public Integer login(@Param("uid") String uid, @Param("pw") String pw);
	
	public List<ReportCom> getComs();
	
	public List<ReportAdviseQues> getQues();
	
	public List<ReportCom> getRques();
	
	public boolean removeEssay(int id);
}
