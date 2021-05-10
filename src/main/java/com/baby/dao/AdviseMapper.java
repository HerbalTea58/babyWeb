package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.Advise;
import com.baby.entity.AdviseCla;
import com.baby.entity.AdviseReply;
import com.baby.entity.AdviseUse;

public interface AdviseMapper {

	public List<AdviseUse> findNewQues();
	
	public List<AdviseUse> findNewReply();
	
	//ͨ��id��ѯ������Ϣ
	public Advise findAdById(Integer id);
		
	//ͨ��id��ѯ������Ļش���Ϣ
	public List<AdviseReply> findReById(Integer id);
	
	//����ҳ������
	public List<AdviseCla> classifyNewQues(int tid);
		
	//����ҳ�»ش�
	public List<Advise> classifyNewRe(int tid);
	
	public Boolean addAdvise(@Param("uid") int uid,@Param("title") String title,@Param("con") String con,@Param("state") int state,@Param("type") int type,@Param("date") String date);

	public Boolean addReply(@Param("uid") int uid,@Param("aid") int aid,@Param("con") String con,@Param("time") String time);
}
