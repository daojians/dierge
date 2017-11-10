package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.impl.CommentDao;
import com.entity.Comment;

public class Commentservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  	request.setCharacterEncoding("utf-8");
		    response.setCharacterEncoding("utf-8");
		     
		     
		    CommentDao dao1=new CommentDao();
		    
		    List<Comment> list=dao1.selectAll(0, 0);
		    
		    request.setAttribute("LIST", list);
		    
		    request.getRequestDispatcher("admin/Commentselect.jsp").forward(request, response);
	}

}
