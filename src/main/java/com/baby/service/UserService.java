package com.baby.service;

import java.util.List;

import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;
import com.baby.entity.UserState;

public interface UserService {
	public UserState selectById(int id);

	//获得用户信息2
	public AllUser selectUserById(int id);
	
	// 用户登录
	public Integer login(String uid, String pw);
	
	//查找用户信息
	public User getInfoById(String uid, String pw);
	
	public User getInfoByPhone(String uid, String pw);
	
	public User getInfoByNick(String uid, String pw);
	
	//修改密码
	public Boolean changePw(String uid, String npw);
	
	//获得收藏列表
	public List<Collection> getCols(int uid);
}
