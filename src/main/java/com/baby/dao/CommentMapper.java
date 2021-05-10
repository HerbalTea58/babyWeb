package com.baby.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baby.entity.Comment;

public interface CommentMapper {
	
	public List<Comment> getCommentByUid(int id);
	
	public Boolean putCom(@Param("tid") int tid,@Param("uid") int uid,@Param("con") String con,@Param("time") String time);
}
