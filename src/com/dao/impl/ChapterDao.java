package com.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dao.IChapterDao;
import com.entity.Chapter;
import com.util.BaseDao;

public class ChapterDao extends BaseDao implements IChapterDao {

	@Override
	public List<Chapter> selectid() {
		List<Chapter> list = new ArrayList<Chapter>();
		// 1. SQL语句
				String sql = "select * from Chapter";
				try {
					// 2. 获取链接
					getConnection();
					// 3. 初始化执行对象
					pstmt = conn.prepareStatement(sql);
					// 5. 执行(查询)
					rs = pstmt.executeQuery();
					// 6. 解析结果
					while (rs.next()) {
						int id = rs.getInt("Id");
						String title = rs.getString("Title");
						int courseId = rs.getInt("CourseId");
						
						Chapter cr = new Chapter(id, courseId, title);
						list.add(cr);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally{
					closeAll();
				}
				return list;
	}

	@Override
	public int add(Chapter cy) {
		int count = 0;
		
		// 1. SQL语句
		String sql = "insert into Chapter(CourseId,Title) values(?,?)";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setInt(1, cy.getCourseId());
			pstmt.setString(2, cy.getTitle());
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
	public int update(Chapter cy) {
		int count = 0;
		
		// 1. SQL语句
		String sql = "Update Chapter set CourseId=?,Title=? where Id=?";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setInt(1, cy.getCourseId());
			pstmt.setString(2, cy.getTitle());
			pstmt.setInt(3, cy.getId());
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
		String sql = "delete from Chapter where Id=?";
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

	@Override
	public List<Chapter> selectids(int idd) {
		List<Chapter> list = new ArrayList<Chapter>();
		// 1. SQL语句
				String sql = "select * from Chapter where CourseId = ?";
				try {
					// 2. 获取链接
					getConnection();
					// 3. 初始化执行对象
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, idd);
					// 5. 执行(查询)
					rs = pstmt.executeQuery();
					// 6. 解析结果
					while (rs.next()) {
						int ids = rs.getInt("Id");
						String title = rs.getString("Title");
						
						Chapter cr = new Chapter(ids, idd, title);
						list.add(cr);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally{
					closeAll();
				}
				return list;

	}

}
