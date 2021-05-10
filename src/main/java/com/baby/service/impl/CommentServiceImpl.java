package com.baby.service.impl;

import java.util.List;

import org.junit.experimental.theories.Theories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baby.dao.CommentMapper;
import com.baby.entity.Comment;
import com.baby.service.CommentService;

@Transactional
@Service("CommentService")
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentMapper commentMapper;
	
	public List<Comment> getCommentByUid(int id) {
		// TODO Auto-generated method stub
		return this.commentMapper.getCommentByUid(id);
	}

	@Override
	public Boolean putCom(int tid, int uid, String con, String time) {
		// TODO Auto-generated method stub
		return this.commentMapper.putCom(tid, uid, con, time);
	}

}
