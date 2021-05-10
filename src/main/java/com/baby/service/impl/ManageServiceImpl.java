package com.baby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.ManageMapper;
import com.baby.entity.ReportAdviseQues;
import com.baby.entity.ReportCom;
import com.baby.service.ManageService;

@Transactional
@Service("ManageService")
public class ManageServiceImpl implements ManageService {

	@Autowired
	private ManageMapper manageMapper;
	
	@Override
	public Integer login(String uid, String pw) {
		// TODO Auto-generated method stub
		return this.manageMapper.login(uid, pw);
	}

	@Override
	public List<ReportCom> getComs() {
		// TODO Auto-generated method stub
		return this.manageMapper.getComs();
	}

	@Override
	public List<ReportAdviseQues> getQues() {
		// TODO Auto-generated method stub
		return this.manageMapper.getQues();
	}

	@Override
	public List<ReportCom> getRques() {
		// TODO Auto-generated method stub
		return this.manageMapper.getRques();
	}

	@Override
	public boolean removeEssay(int id) {
		// TODO Auto-generated method stub
		return this.manageMapper.removeEssay(id);
	}


}
