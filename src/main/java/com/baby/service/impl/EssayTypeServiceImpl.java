package com.baby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.EssayTypeMapper;
import com.baby.service.EssayTypeService;

@Transactional
@Service("EssayTypeService")
public class EssayTypeServiceImpl implements EssayTypeService{

	@Autowired
	private EssayTypeMapper essayTypeMapper;

	public List<String> getEssayType(int id) {
		// TODO Auto-generated method stub
		return essayTypeMapper.getEssayType(id);
	}

	public String getTypeName(int id) {
		// TODO Auto-generated method stub
		return this.essayTypeMapper.getTypeName(id);
	}

	public String getStateName(int id) {
		// TODO Auto-generated method stub
		return this.essayTypeMapper.getStateName(id);
	}
	
	
}
