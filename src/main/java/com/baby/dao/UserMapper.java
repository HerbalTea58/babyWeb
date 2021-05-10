package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;
import com.baby.entity.UserState;

public interface UserMapper {
	public UserState selectById(int id);

	//获得用户信息2
	public AllUser selectUserById(int id);

	// 登录
	public Boolean loginByPhone(@Param("phone") String uid, @Param("pw") String password);

	public Boolean loginByNick(@Param("name") String uid, @Param("pw") String password);

	public Boolean loginById(@Param("id") String uid, @Param("pw") String password);
	
	//查找信息
	public User getInfoByPhone(@Param("phone") String uid, @Param("pw") String password);

	public User getInfoByNick(@Param("name") String uid, @Param("pw") String password);

	public User getInfoById(@Param("id") String uid, @Param("pw") String password);
	
	//查看用户的全部信息
	public User getAllInfoById(int uid);
	
	//修改密码
	public Boolean changePw(@Param("uid")String uid, @Param("upw")String npw);
	
	//获得收藏列表
	public List<Collection> getCols(int uid);
	
}
