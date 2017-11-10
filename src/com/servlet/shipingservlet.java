package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.impl.CommentDao;
import com.entity.Comment;

public class shipingservlet extends HttpServlet {
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
	    if(session.getAttribute("CurrentUser")==null){
	    	out.write("<script>alert('请登录！');location.href='Login.jsp'</script>");
	    	return;
	    };
	    int idd=Integer.parseInt(session.getAttribute("cidd").toString());
	    CommentDao dao1=new CommentDao();
	    
	    List<Comment> list=dao1.selectid(idd);
	    
	    request.setAttribute("LIST", list);
	    
	    request.getRequestDispatcher("shiping.jsp").forward(request, response);
	}

}
