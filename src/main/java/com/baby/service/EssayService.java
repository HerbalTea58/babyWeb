package com.baby.service;

import java.util.List;

import com.baby.entity.Essay;
import com.baby.entity.EssayManage;
import com.baby.entity.ReclassType;
import com.baby.entity.ResearchType;
import com.baby.entity.ShowInMain;

public interface EssayService {
	
	//查找热度前10的文章名和类型       
	
	public List<ShowInMain> getEssayInfoTen();
	
	public Essay getEssayById(Integer id);
	
	public Boolean addClick(int id);
	
	public List<ResearchType> findEssay(String key);
	
	//根据时间获取全部
	public List<ReclassType> findEssayByTS(int tid, int sid);
	
	//根据state和type获得排行前五的文章
	public List<ResearchType> findEssayByTSAndGood(int tid, int sid);
	
	//热度第一
	public Essay findEssayOne();
		
	//热度第二
	public Essay findEssayTwo();
		
	//热度第三
	public Essay findEssayThree();
		
	//热度第四
	public Essay findEssayFour();
			
	//热度第五
	public Essay findEssayFive();
	
	//热度第六
	public Essay findEssaySix();
	
	//热度第七
	public Essay findEssaySeven();
	
	//热度第八
	public Essay findEssayEight();
	
	//热度第九
	public Essay findEssayNine();
	
	//热度第十
	public Essay findEssayTen();
	
	//管理文章
	public List<EssayManage> manageEssay();
	
	//添加文章（无图片）
	public Boolean addEssay(String title, String pre, int type, int state, String con, String time, int mid);
	
	//查看指定页面
	public Essay findEssayByIdManage(int id);
	
	//添加文章（无图片）
	public Boolean updateEssay(String title, String pre, int type, int state, String con, String time, int mid, int tid);

}
