package com.baby.service;

import java.util.List;

public interface EssayTypeService {
	
	public List<String> getEssayType(int id);
	
	public String getTypeName(int id);
	
	public String getStateName(int id);
}
