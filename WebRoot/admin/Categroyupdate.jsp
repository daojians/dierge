<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>    
    <title>慕课网后台管理</title>
    <link rel="stylesheet" href="layui-v1.0.9_rls/layui/css/layui.css">
	<script type="text/javascript" src="layui-v1.0.9_rls/layui/layui.js"></script>
  </head>
  
  <body>
  	<div>
		 <ul class="layui-nav" lay-filter="">
		  <li class="layui-nav-item"><a href="admin/Userselectall.jsp">慕课网</a></li>
		  <li class="layui-nav-item">
		    <a href="javascript:;">用户信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		    	<dd><a href="Userselectservlet">查询用户</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">课程分类</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="../Categoryselectservlet">查询所有课程</a></dd>
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
		      <dd><a href="">查询课程</a></dd>
		      <dd><a href="admin/Courseadd.jsp">添加课程</a>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">评论信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="">查询评论</a></dd>
		    </dl>
		  </li>
		</ul>
 
	<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function(){
	  var element = layui.element();
	  
	  //…
	});
	</script>
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
   </div>
		<div>
			<form class="layui-form" action="../Categoryupdateservlet" method="post">
			<input type="text" name="id" value="<%= Integer.parseInt(request.getParameter("id"))%>" style="display: none;">
			  <div class="layui-form-item">
			    <label class="layui-form-label">输入框</label>
			    <div class="layui-input-block">
			      <input type="text" name="title" required  lay-verify="required" placeholder="请输入新信息" autocomplete="off" class="layui-input">
			    </div>
			  </div>
			      <div class="layui-form-item">
			    <div class="layui-input-block">
			      <input class="layui-btn" type="submit" lay-submit lay-filter="formDemo" value="提交">
			      
			      <button type="reset" class="layui-btn layui-btn-primary">清空</button>

			    </div>
			  </div>
			</form>
		</div>
  </body>
</html>
