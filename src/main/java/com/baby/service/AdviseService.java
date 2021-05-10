package com.baby.service;

import java.util.List;

import com.baby.entity.Advise;
import com.baby.entity.AdviseCla;
import com.baby.entity.AdviseReply;
import com.baby.entity.AdviseUse;

public interface AdviseService {
	
	//��ҳδ������
	public List<AdviseUse> findNewQues();
	
	//��ҳ�»ش�
	public List<AdviseUse> findNewReply();
	
	//ͨ��id��ѯ������Ϣ
	public Advise findAdById(Integer id);
	
	//ͨ��id��ѯ������Ļش���Ϣ
	public List<AdviseReply> findReById(Integer id);
	
	//����ҳ������
	public List<AdviseCla> classifyNewQues(int tid);
	
	//����ҳ�»ش�
	public List<Advise> classifyNewRe(int tid);
	
	public Boolean addAdvise(int uid, String title, String con, int state, int type, String time);
	
	public Boolean addReply(int uid, int aid, String con, String time);
}
