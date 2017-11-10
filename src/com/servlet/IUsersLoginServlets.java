package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ICourseDao;
import com.dao.IUsersDao;
import com.dao.impl.CourseDao;
import com.dao.impl.UsersDao;
import com.entity.Course;
import com.entity.Users;

public class IUsersLoginServlets extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 request.setCharacterEncoding("utf-8");
		  response.setCharacterEncoding("utf-8");
		  response.setContentType("text/html");
		  
		  String username = request.getParameter("title");
		  String password = request.getParameter("password");
	    
		  Users us = new Users();
		  us.setUsername(username);
		  us.setPassword(password);
		  
		  PrintWriter out = response.getWriter();
		  IUsersDao dao=new UsersDao();
		  List<Users> list=dao.SelectAlls(us);
	
		  int userID=0;
		  
		  request.setAttribute("LIST", list);
		  if(!list.isEmpty()){
			out.write("<script>alert('登录成功！');</script>");
			HttpSession session = request.getSession();
			
			for(Users item:list){
				userID=item.getId();
			}
			
			session.setAttribute("CurrentUser",userID);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		  }else{
			out.write("<script>alert('登录失败！');location.href='Login.jsp'</script>");
		  }

	}

}
