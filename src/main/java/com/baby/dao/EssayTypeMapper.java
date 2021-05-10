package com.baby.dao;

import java.util.List;

public interface EssayTypeMapper {
	
	public List<String> getEssayType(int id);
	
	public String getTypeName(int id);
	
	public String getStateName(int id);
}
