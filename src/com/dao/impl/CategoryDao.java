package com.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dao.ICategoryDao;
import com.entity.Category;
import com.util.BaseDao;

public class CategoryDao extends BaseDao implements ICategoryDao{

	@Override
	public List<Category> select() {
		
		List<Category> list = new ArrayList<Category>();
		// 1. SQL语句
		String sql = "select * from Category";	
		
		try {
			// 2. 打开并获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 执行(查询)并获取结果
			rs = pstmt.executeQuery();
			// 5. 解析结果集
			while (rs.next()) {
				int id = rs.getInt("Id");
				String name = rs.getString("Name");
				
				Category news = new Category(id, name);
				list.add(news);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			// 6. 释放资源
			closeAll();	
		}
		
		return list;
	}

	@Override
	public int add(Category cy) {
		int count = 0;
		
		// 1. SQL语句
		String sql = "insert into Category(Name) values(?)";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setString(1, cy.getName());
			// 5. 执行(更新操作)
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll();
		}
		
		return count;
	}

	@Override
	public int update(Category cy) {
		int count = 0;

		// 1. SQL语句
		String sql = "Update Category set Name=? where Id=?";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cy.getName());
			pstmt.setInt(2, cy.getId());
			// 5. 执行(更新操作)
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll();
		}

		return count;
	}

	@Override
	public int delete(int id) {
		int count = 0;

		// 1. SQL语句
		String sql = "delete from Category where Id=?";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setInt(1, id);
			// 5. 执行(更新操作)
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}

		return count;
	}
	

}
