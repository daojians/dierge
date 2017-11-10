package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.IChapterDao;
import com.dao.ICourseDao;
import com.dao.impl.ChapterDao;
import com.dao.impl.CourseDao;
import com.entity.Chapter;
import com.entity.Course;

public class jiezhangServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(request.getParameter("idss").isEmpty()){
			request.getRequestDispatcher("IICategoryselectservlet");
			return;
		}
		
		int id = Integer.parseInt(request.getParameter("idss"));
		
		
		
		// 调用DAO，进行查询操作
		IChapterDao dao = new ChapterDao();
		List<Chapter> Ce = dao.selectids(id);
		int idss = 0;
		for(Chapter item:Ce){
			idss = item.getId();
		}
		 HttpSession session = request.getSession();
		 session.setAttribute("cidd", idss);
		// 将查询结果存储到request作用域中
		request.setAttribute("LIST", Ce);
		
		ICourseDao daos = new CourseDao();
		List<Course> Cee = daos.selectid(id);
		
		
		// 将查询结果存储到request作用域中
		request.setAttribute("LISTS", Cee);
		
		// 转发回首页
		request.getRequestDispatcher("jiezhang.jsp").forward(request, response);


	}

}
