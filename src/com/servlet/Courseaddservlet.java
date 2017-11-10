package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ICourseDao;
import com.dao.impl.CourseDao;
import com.entity.Course;

public class Courseaddservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     response.setContentType("text/html");
		
	     PrintWriter out=response.getWriter();
	     
	     int counts=Integer.parseInt(request.getParameter("rs"));
	     int categoryId=Integer.parseInt(request.getParameter("fl"));
	     String name=request.getParameter("mc");
	     String description=request.getParameter("jj");
	     String level=request.getParameter("jb");
	     String time=request.getParameter("sc");
	     String notice=request.getParameter("xz");
	     
	     Course cs = new Course(categoryId, name, description, counts, level, time, notice);
	     
	     ICourseDao dao = new CourseDao();
	     
	     
	     int count=dao.add(cs);
	     
	     if (count>0) {
	    	 out.write("<script>alert('新增成功！'); location.href='CourseSelectservlet';</script>");
			}else{
			out.write("<script>alert('新增失败！'); location.href='admin/Courseadd.jsp';</script>");
			}
		
		
	}

}
