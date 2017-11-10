package com.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.IUsersDao;
import com.entity.Users;
import com.util.BaseDao;

public class UsersDao extends BaseDao implements IUsersDao {

	@Override
	public List<Users> SelectAlls(Users user) {
		List<Users> list=new ArrayList<Users>();
		try {
			String sql="select * from Users where Username=? and Password=?";
			getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int id=rs.getInt("Id");
				String username=rs.getString("Username");
				String password=rs.getString("Password");
				String email=rs.getString("Email");
				
				Users users=new Users(id, username, password, email);
				list.add(users);
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
	public List<Users> selectAll() {
		List<Users> list=new ArrayList<Users>();	
		try {
			String sql="select * from Users";
			getConnection();
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int id=rs.getInt("Id");
				String username=rs.getString("Username");
				String password=rs.getString("Password");
				String email=rs.getString("Email");
				
				Users users=new Users(id, username, password, email);
				list.add(users);
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
		   int count=0;
		    try {
				String sql="delete from Users where Id=?";
				getConnection();
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				count=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				closeAll();
			}
			return count;

	}

	@Override
	public int add(Users user) {
		int count = 0;
		
		// 1. SQL语句
		String sql = "insert into Users(Username,Password,Email) values(?,?,?)";
		try {
			// 2. 获取链接
			getConnection();
			// 3. 初始化执行对象
			pstmt = conn.prepareStatement(sql);
			// 4. 传参
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getEmail());
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
