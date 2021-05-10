package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.Essay;
import com.baby.entity.EssayManage;
import com.baby.entity.ReclassType;
import com.baby.entity.ResearchType;
import com.baby.entity.ShowInMain;

public interface EssayMapper {
	public String getEssayNameById(int id);
	
	//�����ȶ�ǰ10��������������       
	public List<ShowInMain> getEssayInfoTen();
	
	//ͨ��id���������Ϣ
	public Essay getEssayById(int id);
	
	//ÿһ�ε�����µ����+1
	public Boolean addClick(int id);
	
	//ͨ���ؼ��ʲ�������
	public List<ResearchType> findEssay(String key);
	
	
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
	
	//����state��type�������
	public List<ReclassType> findEssayByTS(@Param("tid") int tid, @Param("sid") int sid);
	
	//����state��type����ȶ�����ǰ�������
	public List<ResearchType> findEssayByTSAndGood(@Param("tid") int tid, @Param("sid") int sid);

	//��������
	public List<EssayManage> manageEssay();
	
	//������£���ͼƬ��
	public Boolean addEssay(@Param("title") String title,@Param("pre") String pre,@Param("type") int type,@Param("state") int state,@Param("context") String con,@Param("time") String time,@Param("mid") int mid);

	//�鿴ָ��ҳ��
	public Essay findEssayByIdManage(int id);
	
	//������£���ͼƬ��
	public Boolean updateEssay(@Param("title") String title,@Param("pre") String pre,@Param("type") int type,@Param("state") int state,@Param("context") String con,@Param("time") String time,@Param("mid") int mid,@Param("tid") int tid);

}
