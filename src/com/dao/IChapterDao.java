package com.dao;

import java.util.List;

import com.entity.Chapter;

public interface IChapterDao {
	public List<Chapter> selectid();//根据ID查询节章信息
	public int add(Chapter cy);//增加
	public int update(Chapter cy);//修改
	public int delete(int id);//删除	
	public List<Chapter> selectids(int idd);
}
