package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IChapterDao;
import com.dao.impl.ChapterDao;
import com.entity.Chapter;

public class ChapterAddservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
		
	     PrintWriter out=response.getWriter();
	     
	     int id=Integer.parseInt(request.getParameter("id"));
	     int courseId=Integer.parseInt(request.getParameter("courseId"));
	     String title=request.getParameter("title");
	
	     Chapter chapter=new Chapter(id, courseId, title);
	     
	     IChapterDao dao=new ChapterDao();
	     int count=dao.add(chapter);
	     
	     if (count>0) {
	    	 out.write("<script>alert('新增成功！'); location.href='Chapterselectservlet';</script>");
			}else{
			out.write("<script>alert('新增失败！'); location.href='Chapterselectservlet';</script>");
			}
	}

}
