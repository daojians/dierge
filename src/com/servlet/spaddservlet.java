package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ICommentDao;
import com.dao.impl.CommentDao;
import com.entity.Comment;

public class spaddservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     response.setContentType("text/html");
	     HttpSession session = request.getSession();
		
	     PrintWriter out=response.getWriter();
	     int chapterId=Integer.parseInt(session.getAttribute("cidd").toString());
	     int userid=Integer.parseInt(session.getAttribute("CurrentUser").toString());
	          
	     String coutent=request.getParameter("nr");
	     
	     
	     Comment ct = new Comment();
	     ct.setChapterId(chapterId);
	     ct.setUserId(userid);
	     ct.setContent(coutent);
	     
	     
	     ICommentDao dao = new CommentDao();
	     int id =dao.add(ct);
	     
	     if (id>0) {
	    	 out.write("<script>alert('评论成功！'); location.href='shipingservlet';</script>");
			}else{
			out.write("<script>alert('评论失败！'); location.href='shipingservlet';</script>");
			}

	}

}
