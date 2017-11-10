package com.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dao.ICourseDao;
import com.entity.Course;
import com.util.BaseDao;

public class CourseDao extends BaseDao implements ICourseDao {

	@Override
	public List<Course> selectid(int id) {
		 List<Course> list = new ArrayList<Course>();
		 			// 1. SQL语句
					String sql = "select * from Course";
					try {
					// 2. 获取链接
					getConnection();
					if(id>0){
						sql+=" where id=?";
						pstmt = conn.prepareStatement(sql);
						// 4. 传参
						pstmt.setInt(1, id);
						// 5. 执行(查询)
						rs = pstmt.executeQuery();
					}else{
						pstmt = conn.prepareStatement(sql);
					}
					// 3. 初始化执行对象-
					rs = pstmt.executeQuery();
					// 6. 解析结果
					while (rs.next()) {
						String level = rs.getString("Level");
						int count =rs.getInt("Count");
						String description = rs.getString("Description");
						int categoryId = rs.getInt("CategoryId");
						String time = rs.getString("Time");
						String name = rs.getString("Name");
						String notice = rs.getString("Notice");
						
						Course ce = new Course(id, categoryId, name, description, count, level, time, notice);
						list.add(ce);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally{
					closeAll();
				}
				
				return list;
	}


	
	//查詢所有
	@Override
	public List<Course> selectAll() {
		List<Course> list=new ArrayList<Course>();
		try {
			String sql="select COU.*,CAT.Name as 'categoryName' from Course as COU inner join Category as CAT  on COU.CategoryId=CAT.Id ";
			getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int id=rs.getInt("Id");
				int categoryId=rs.getInt("CategoryId");
				String name=rs.getString("Name");
				String description=rs.getString("Description");
				int count=rs.getInt("Count");
				String level=rs.getString("Level");
				String time=rs.getString("Time");
				String notice=rs.getString("Notice");
				String categoryName=rs.getString("CategoryName");
				
				Course course=new Course(id, categoryId, name, description, count, level, time, notice,categoryName);
				list.add(course);
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
	public int add(Course cs) {
		int count = 0;
			
			// 1. SQL语句
			String sql = "insert into Course(CategoryId,Name,Description,Count,Level,Time,Notice) values(?,?,?,?,?,?,?)";
			try {
				// 2. 获取链接
				getConnection();
				// 3. 初始化执行对象
				pstmt = conn.prepareStatement(sql);
				// 4. 传参
				pstmt.setInt(1,cs.getCategoryId());
				pstmt.setString(2, cs.getName());
				pstmt.setString(3, cs.getDescription());
				pstmt.setInt(4, cs.getCount());
				pstmt.setString(5, cs.getLevel());
				pstmt.setString(6, cs.getTime());
				pstmt.setString(7, cs.getNotice());
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
