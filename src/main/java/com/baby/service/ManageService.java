package com.baby.service;

import java.util.List;

import com.baby.entity.ReportAdviseQues;
import com.baby.entity.ReportCom;

public interface ManageService {
	
	public Integer login(String uid, String pw);
	
	public List<ReportCom> getComs();
	
	public List<ReportAdviseQues> getQues();
	
	public List<ReportCom> getRques();
	
	public boolean removeEssay(int id);
}
