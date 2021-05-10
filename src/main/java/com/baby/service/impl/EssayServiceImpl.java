package com.baby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.EssayMapper;
import com.baby.entity.Essay;
import com.baby.entity.EssayManage;
import com.baby.entity.ReclassType;
import com.baby.entity.ResearchType;
import com.baby.entity.ShowInMain;
import com.baby.service.EssayService;

@Transactional
@Service("EssayService")
public class EssayServiceImpl implements EssayService{

	@Autowired
	private EssayMapper essayMapper;
	
	public List<ShowInMain> getEssayInfoTen() {
		// TODO Auto-generated method stub
		return this.essayMapper.getEssayInfoTen();
	}

	public Essay getEssayById(Integer id) {
		// TODO Auto-generated method stub
		return this.essayMapper.getEssayById(id);
	}

	public Boolean addClick(int id) {
		// TODO Auto-generated method stub
		return this.essayMapper.addClick(id);
	}

	public List<ResearchType> findEssay(String key) {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssay(key);
	}
	
	@Override
	public Essay findEssayOne() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayOne();
	}

	@Override
	public Essay findEssayTwo() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayTwo();
	}

	@Override
	public Essay findEssayThree() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayThree();
	}

	@Override
	public Essay findEssayFour() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayFour();
	}

	@Override
	public Essay findEssayFive() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayFive();
	}
	
	public Essay findEssaySix() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssaySix();
	}

	public Essay findEssaySeven() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssaySeven();
	}

	public Essay findEssayEight() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayEight();
	}

	public Essay findEssayNine() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayNine();
	}

	public Essay findEssayTen() {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayTen();
	}

	@Override
	public List<ReclassType> findEssayByTS(int tid, int sid) {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayByTS(tid, sid);
	}

	@Override
	public List<ResearchType> findEssayByTSAndGood(int tid, int sid) {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayByTSAndGood(tid, sid);
	}

	@Override
	public List<EssayManage> manageEssay() {
		// TODO Auto-generated method stub
		return this.essayMapper.manageEssay();
	}


	@Override
	public Boolean addEssay(String title, String pre, int type, int state, String con, String time, int mid) {
		// TODO Auto-generated method stub
		return this.essayMapper.addEssay(title, pre, type, state, con, time, mid);
	}

	@Override
	public Essay findEssayByIdManage(int id) {
		// TODO Auto-generated method stub
		return this.essayMapper.findEssayByIdManage(id);
	}

	@Override
	public Boolean updateEssay(String title, String pre, int type, int state, String con, String time, int mid, int tid) {
		// TODO Auto-generated method stub
		return this.essayMapper.updateEssay(title, pre, type, state, con, time, mid, tid);
	}

	

}
