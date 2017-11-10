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

public class Userselectservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		    
		IUsersDao dao=new UsersDao();
		List<Users> US=dao.selectAll();
		
		request.setAttribute("LIST", US);
		
		request.getRequestDispatcher("admin/Userselect.jsp").forward(request, response);

	}

}
