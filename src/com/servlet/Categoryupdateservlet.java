package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ICategoryDao;
import com.dao.impl.CategoryDao;
import com.entity.Category;

public class Categoryupdateservlet extends HttpServlet {
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
		String name = request.getParameter("title");
		
		Category cy = new Category(id,name);
		ICategoryDao dao = new CategoryDao();
		int count = dao.update(cy);
		
		// 判断结果
		if(count>0){
			out.write("<script>alert('修改成功！'); location.href='Categoryselectservlet';</script>");
		}else{
			out.write("<script>alert('修改失败！'); location.href='Categoryselectservlet';</script>");
		}

	}
		
	}


