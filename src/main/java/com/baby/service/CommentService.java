package com.baby.service;

import java.util.List;

import com.baby.entity.Comment;

public interface CommentService {
	public List<Comment> getCommentByUid(int id);
	
	public Boolean putCom(int tid, int uid, String con, String time);
}
