package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ICategoryDao;
import com.dao.impl.CategoryDao;
import com.entity.Category;

public class Categoryservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String name = request.getParameter("title");
		
		// 将参数封装到一个对象中
		Category cy = new Category();
		cy.setName(name);
				
				// 调用DAO，进行新增
		ICategoryDao dao = new CategoryDao();
		int count = dao.add(cy);
				
				// 获取输出对象
				PrintWriter out = response.getWriter();
				
				// 判断结果
				if(count>0){
					out.write("<script>alert('新增成功！'); location.href='Categoryselectservlet';</script>");
				}else{
					out.write("<script>alert('新增失败！'); location.href='Categorytadd.jsp';</script>");
				}
	}

}
