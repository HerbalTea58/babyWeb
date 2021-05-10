package com.baby.service;

import java.util.List;

import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;
import com.baby.entity.UserState;

public interface UserService {
	public UserState selectById(int id);

	//����û���Ϣ2
	public AllUser selectUserById(int id);
	
	// �û���¼
	public Integer login(String uid, String pw);
	
	//�����û���Ϣ
	public User getInfoById(String uid, String pw);
	
	public User getInfoByPhone(String uid, String pw);
	
	public User getInfoByNick(String uid, String pw);
	
	//�޸�����
	public Boolean changePw(String uid, String npw);
	
	//����ղ��б�
	public List<Collection> getCols(int uid);
}
