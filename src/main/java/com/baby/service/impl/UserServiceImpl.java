package com.baby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.UserMapper;
import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;
import com.baby.entity.UserState;
import com.baby.service.UserService;

@Transactional
@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userDao;

	public UserState selectById(int id) {
		// TODO Auto-generated method stub
		return this.userDao.selectById(id);
	}

	// ÓÃ»§µÇÂ¼
	public Integer login(String uid, String pw) {
		// TODO Auto-generated method stub
		//Integer end11, end22, end33;
		Boolean end1 = this.userDao.loginById(uid, pw);
		if (end1 == null)
			end1 = false;
		Boolean end2 = this.userDao.loginByNick(uid, pw);
		if (end2 == null)
			end2 = false;
		Boolean end3 = this.userDao.loginByPhone(uid, pw);
		if (end3 == null)
			end3 = false;
		
		if(end1 || end2 || end3){
			if(end1)
				return 1;
			if(end2)
				return 2;
			if(end3)
				return 3;
			return 0;
		}
		else 
			return 0;
	}

	public User getInfoById(String uid, String pw) {
		// TODO Auto-generated method stub
		return this.userDao.getInfoById(uid, pw);
	}

	public User getInfoByPhone(String uid, String pw) {
		// TODO Auto-generated method stub
		return this.userDao.getInfoByPhone(uid, pw);
	}

	public User getInfoByNick(String uid, String pw) {
		// TODO Auto-generated method stub
		return this.userDao.getInfoByNick(uid, pw);
	}

	@Override
	public Boolean changePw(String uid, String npw) {
		// TODO Auto-generated method stub
		return this.userDao.changePw(uid, npw);
	}

	@Override
	public List<Collection> getCols(int uid) {
		// TODO Auto-generated method stub
		return this.userDao.getCols(uid);
	}

	@Override
	public AllUser selectUserById(int id) {
		// TODO Auto-generated method stub
		return this.userDao.selectUserById(id);
	}

}
