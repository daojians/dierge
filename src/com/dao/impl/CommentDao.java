package com.dao.impl;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.ICommentDao;
import com.entity.Comment;
import com.util.BaseDao;

public class CommentDao extends BaseDao implements ICommentDao {

	@Override
	public List<Comment> selectAll(int chapterId,int userId) {
		List<Comment> list=new ArrayList<Comment>();
		try {
			String sql="select C.*,H.title as 'ChapterTitle',U.username as 'UsersUsername' from Comment as C inner join Chapter as H on C.ChapterId=H.Id inner join Users as U on C.ChapterId=U.Id ";    
			getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int id=rs.getInt("Id");
			
				String content=rs.getString("Content");
				Date time=rs.getDate("Time");
				String usersUsername=rs.getString("usersUsername");
				String chapterTitle=rs.getString("chapterTitle");
				
				
				Comment C=new Comment(id, chapterId, userId, content, time, usersUsername, chapterTitle);
			    list.add(C);
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
	    
		return list;

	}

	@Override
	public int delete(int id) {
		int count = 0;

		// 1. SQL语句
		String sql = "delete from Comment where Id=?";
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
	public List<Comment> selectid(int id) {
		List<Comment> list=new ArrayList<Comment>();
		try {
			String sql="select C.*,U.username as 'UsersUsername' from Comment as C join Users as U on C.UserId=U.Id where ChapterId=?";    
			getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			while (rs.next()) {	
				String content=rs.getString("Content");
				Date time=rs.getDate("Time");
				String usersUsername=rs.getString("usersUsername");
				
				
				Comment C = new Comment(content, time, usersUsername);
			    list.add(C);
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
	    
		return list;
	}

	@Override
	public int add(Comment ct) {
		int count = 0;
		
		// 1. SQL语句
		String sql = "insert into Comment(ChapterId,UserId,Content,Time) values(?,?,?,getdate())";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setInt(1,ct.getChapterId());
			pstmt.setInt(2, ct.getUserId());
			pstmt.setString(3, ct.getContent());
			// 5. 执行(更新操作)
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll();
		}
		
		return count;
	}
	
}
