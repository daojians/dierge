package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ICourseDao;
import com.dao.impl.CourseDao;
import com.entity.Course;


public class CourseSelectservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			// 设置request的编码格式
			request.setCharacterEncoding("utf-8");
			
			// 调用DAO，进行查询操作
			ICourseDao dao = new CourseDao();
			List<Course> Ce = dao.selectAll();
			
			// 将查询结果存储到request作用域中
			request.setAttribute("LIST", Ce);
			
			// 转发回首页
			request.getRequestDispatcher("admin/Courseselect.jsp").forward(request, response);
	}

}
