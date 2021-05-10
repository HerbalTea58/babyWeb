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
	
	//查找热度前10的文章名和类型       
	public List<ShowInMain> getEssayInfoTen();
	
	//通过id获得文章信息
	public Essay getEssayById(int id);
	
	//每一次点击文章点击量+1
	public Boolean addClick(int id);
	
	//通过关键词查找文章
	public List<ResearchType> findEssay(String key);
	
	
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
	
	//根据state和type获得文章
	public List<ReclassType> findEssayByTS(@Param("tid") int tid, @Param("sid") int sid);
	
	//根据state和type获得热度排行前五的文章
	public List<ResearchType> findEssayByTSAndGood(@Param("tid") int tid, @Param("sid") int sid);

	//管理文章
	public List<EssayManage> manageEssay();
	
	//添加文章（无图片）
	public Boolean addEssay(@Param("title") String title,@Param("pre") String pre,@Param("type") int type,@Param("state") int state,@Param("context") String con,@Param("time") String time,@Param("mid") int mid);

	//查看指定页面
	public Essay findEssayByIdManage(int id);
	
	//添加文章（无图片）
	public Boolean updateEssay(@Param("title") String title,@Param("pre") String pre,@Param("type") int type,@Param("state") int state,@Param("context") String con,@Param("time") String time,@Param("mid") int mid,@Param("tid") int tid);

}
