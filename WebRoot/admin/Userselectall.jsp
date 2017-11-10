<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>慕课网后台管理</title>
    <link rel="stylesheet" href="admin/layui-v1.0.9_rls/layui/css/layui.css">
	<script type="text/javascript" src="admin/layui-v1.0.9_rls/layui/layui.js"></script>
  </head>
  
  <body>
		 <ul class="layui-nav" lay-filter="">
		  <li class="layui-nav-item"><a href="Userselectall.jsp">慕课网</a></li>
		  <li class="layui-nav-item">
		    <a href="javascript:;">用户信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		    	<dd><a href="Userselectservlet">查询用户</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">课程分类</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="Categoryselectservlet">查询所有课程</a></dd>
		      <dd><a href="Categorytadd.jsp">添加课程</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">节章信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="../Chapterselectservlet">查询节章</a></dd>
		      <dd><a href="admin/Chapteradd.jsp">添加节章</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">课程信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="admin/Chapteradd.jsp">查询课程</a></dd>
		      <dd><a href="admin/Courseadd.jsp">添加课程</a>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">评论信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="Commentservlet">查询评论</a></dd>
		    </dl>
		  </li>
		</ul>
 
	<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function(){
	  var element = layui.element();
	  
	  //
	});
	</script>

      <div style="">
      <h1 style="font-size: 50px;margin-left: 20px;margin-left: 800px">欢迎登录慕课网</h1>
      <p style="margin-left: 900px;margin-top: 10px">尊敬的用户： <c:forEach items="${requestScope.LIST }" var="item">${item.username}</c:forEach></p>
      	<img alt="" style="margin-top: 150px;margin-left: 700px" src="image/20140116100041-1745900002.jpg">
      </div>
  </body>
</html>
