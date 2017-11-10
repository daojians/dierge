package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IUsersDao;
import com.dao.impl.UsersDao;
import com.entity.Users;

public class UsersAddServlet extends HttpServlet {
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
	     
	     String username = request.getParameter("username");
	     String password = request.getParameter("password");
	     String email = request.getParameter("email");
	     
	     Users user = new Users();
	     user.setUsername(username);
	     user.setPassword(password);
	     user.setEmail(email);
	     
	     IUsersDao dao = new UsersDao();
	     int count = dao.add(user);
	     
	     if (count>0) {
	    	 out.write("<script>alert('注册成功！'); location.href='Login.jsp';</script>");
			}else{
			out.write("<script>alert('注册失败！'); location.href='Login.jsp';</script>");
			}
	}

}
