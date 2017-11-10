package com.dao;

import java.util.List;

import com.entity.Comment;


public interface ICommentDao {
	//查询所有
	public List<Comment> selectAll(int chapterId,int userId);
	public int delete(int id);//删除	
	public List<Comment> selectid(int id);
	public int add(Comment ct);
}
