package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IChapterDao;
import com.dao.impl.ChapterDao;



public class Chapterdeleteservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		IChapterDao dao = new ChapterDao();
		int count = dao.delete(id);
		
		// 判断结果
		if(count>0){
			out.write("<script>alert('删除成功！'); location.href='Chapterselectservlet';</script>");
		}else{
			out.write("<script>alert('删除失败！'); location.href='Chapterselectservlet';</script>");
		}
	}

}
