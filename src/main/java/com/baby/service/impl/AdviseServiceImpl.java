package com.baby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.AdviseMapper;
import com.baby.entity.Advise;
import com.baby.entity.AdviseCla;
import com.baby.entity.AdviseReply;
import com.baby.entity.AdviseUse;
import com.baby.service.AdviseService;

@Transactional
@Service("AdviseService")
public class AdviseServiceImpl implements AdviseService{

	@Autowired
	private AdviseMapper adviseMapper;
	
	@Override
	public List<AdviseUse> findNewQues() {
		// TODO Auto-generated method stub
		return this.adviseMapper.findNewQues();
	}

	@Override
	public List<AdviseUse> findNewReply() {
		// TODO Auto-generated method stub
		return this.adviseMapper.findNewReply();
	}

	@Override
	public Advise findAdById(Integer id) {
		// TODO Auto-generated method stub
		return this.adviseMapper.findAdById(id);
	}

	@Override
	public List<AdviseReply> findReById(Integer id) {
		// TODO Auto-generated method stub
		return this.adviseMapper.findReById(id);
	}

	@Override
	public List<AdviseCla> classifyNewQues(int tid) {
		// TODO Auto-generated method stub
		return this.adviseMapper.classifyNewQues(tid);
	}

	@Override
	public List<Advise> classifyNewRe(int tid) {
		// TODO Auto-generated method stub
		return this.adviseMapper.classifyNewRe(tid);
	}

	@Override
	public Boolean addAdvise(int uid, String title, String con, int state, int type, String time) {
		// TODO Auto-generated method stub
		return this.adviseMapper.addAdvise(uid, title, con, state, type, time);
	}

	@Override
	public Boolean addReply(int uid, int aid, String con, String time) {
		// TODO Auto-generated method stub
		return this.adviseMapper.addReply(uid, aid, con, time);
	}

}
