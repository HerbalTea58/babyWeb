package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;
import com.baby.entity.UserState;

public interface UserMapper {
	public UserState selectById(int id);

	//����û���Ϣ2
	public AllUser selectUserById(int id);

	// ��¼
	public Boolean loginByPhone(@Param("phone") String uid, @Param("pw") String password);

	public Boolean loginByNick(@Param("name") String uid, @Param("pw") String password);

	public Boolean loginById(@Param("id") String uid, @Param("pw") String password);
	
	//������Ϣ
	public User getInfoByPhone(@Param("phone") String uid, @Param("pw") String password);

	public User getInfoByNick(@Param("name") String uid, @Param("pw") String password);

	public User getInfoById(@Param("id") String uid, @Param("pw") String password);
	
	//�鿴�û���ȫ����Ϣ
	public User getAllInfoById(int uid);
	
	//�޸�����
	public Boolean changePw(@Param("uid")String uid, @Param("upw")String npw);
	
	//����ղ��б�
	public List<Collection> getCols(int uid);
	
}
