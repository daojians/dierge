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

public class Coursecxsservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			ICourseDao Dao = new CourseDao();
			List<Course> Ce = Dao.selectid(-1);
			// 将查询结果存储到request作用域中
			request.setAttribute("LISTS", Ce);
			request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
