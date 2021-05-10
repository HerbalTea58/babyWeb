package com.baby.service;

import java.util.List;

import com.baby.entity.Essay;
import com.baby.entity.EssayManage;
import com.baby.entity.ReclassType;
import com.baby.entity.ResearchType;
import com.baby.entity.ShowInMain;

public interface EssayService {
	
	//�����ȶ�ǰ10��������������       
	
	public List<ShowInMain> getEssayInfoTen();
	
	public Essay getEssayById(Integer id);
	
	public Boolean addClick(int id);
	
	public List<ResearchType> findEssay(String key);
	
	//����ʱ���ȡȫ��
	public List<ReclassType> findEssayByTS(int tid, int sid);
	
	//����state��type�������ǰ�������
	public List<ResearchType> findEssayByTSAndGood(int tid, int sid);
	
	//�ȶȵ�һ
	public Essay findEssayOne();
		
	//�ȶȵڶ�
	public Essay findEssayTwo();
		
	//�ȶȵ���
	public Essay findEssayThree();
		
	//�ȶȵ���
	public Essay findEssayFour();
			
	//�ȶȵ���
	public Essay findEssayFive();
	
	//�ȶȵ���
	public Essay findEssaySix();
	
	//�ȶȵ���
	public Essay findEssaySeven();
	
	//�ȶȵڰ�
	public Essay findEssayEight();
	
	//�ȶȵھ�
	public Essay findEssayNine();
	
	//�ȶȵ�ʮ
	public Essay findEssayTen();
	
	//��������
	public List<EssayManage> manageEssay();
	
	//������£���ͼƬ��
	public Boolean addEssay(String title, String pre, int type, int state, String con, String time, int mid);
	
	//�鿴ָ��ҳ��
	public Essay findEssayByIdManage(int id);
	
	//������£���ͼƬ��
	public Boolean updateEssay(String title, String pre, int type, int state, String con, String time, int mid, int tid);

}
