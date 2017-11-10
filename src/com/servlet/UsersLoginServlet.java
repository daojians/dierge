package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IUsersDao;
import com.dao.impl.UsersDao;
import com.entity.Users;

public class UsersLoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			  request.setCharacterEncoding("utf-8");
			  response.setCharacterEncoding("utf-8");
			  response.setContentType("text/html");
			  
			  String username = request.getParameter("username");
			  String password = request.getParameter("password");
		    
			  Users us = new Users();
			  us.setUsername(username);
			  us.setPassword(password);
			  
			  PrintWriter out = response.getWriter();
			  IUsersDao dao=new UsersDao();
			  List<Users> US=dao.SelectAlls(us);
		
			  request.setAttribute("LIST", US);
			  
			  if(!US.isEmpty()){
				out.write("<script>alert('登录成功！')</script>");
				request.getRequestDispatcher("admin/Userselectall.jsp").forward(request, response);
			  }else{
				out.write("<script>alert('登录失败！');location.href='admin/login.jsp'</script>");
			  }
	}

}
