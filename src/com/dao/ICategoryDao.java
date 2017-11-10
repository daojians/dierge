package com.dao;

import java.util.List;

import com.entity.Category;

public interface ICategoryDao {
	public List<Category> select();
	public int add(Category cy);//增加
	public int update(Category cy);//修改
	public int delete(int id);//删除	
}
