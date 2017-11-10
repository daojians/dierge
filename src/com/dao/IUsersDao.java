package com.dao;

import java.util.List;

import com.entity.Users;

public interface IUsersDao {
		public List<Users> SelectAlls(Users user);//根据用户查询
		//查询所有
		public List<Users> selectAll();
		
		//删除
		public int delete(int id);
		//添加
		public int add(Users user);

}
