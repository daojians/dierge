package com.dao;

import java.util.List;

import com.entity.Course;


public interface ICourseDao {
	public List<Course> selectid(int id);//根据ID查询节章信息
	
	//查詢所有
	public List<Course> selectAll();
	
	public int add(Course cs);
	
	
}
