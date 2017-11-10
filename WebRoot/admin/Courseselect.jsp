<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty requestScope.LIST }">
	<c:redirect url="CourseSelectservlet"></c:redirect>
</c:if>
<html>
  <head>    
    <title>慕课网后台管理</title>
    <link rel="stylesheet" href="admin/layui-v1.0.9_rls/layui/css/layui.css">
	<script type="text/javascript" src="admin/layui-v1.0.9_rls/layui/layui.js"></script>
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
		      <dd><a href="Categoryselectservlet">查询所有课程</a></dd>
		      <dd><a href="admin/Categorytadd.jsp">添加课程</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">节章信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="Chapterselectservlet">查询节章</a></dd>
		      <dd><a href="admin/Chapteradd.jsp">添加节章</a></dd>
		    </dl>
		  </li>
		   <li class="layui-nav-item">
		    <a href="javascript:;">课程信息</a>
		    <dl class="layui-nav-child"> <!-- 二级菜单 -->
		      <dd><a href="Commentservlet">查询课程</a></dd>
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
	layui.use('element', function(){
	  var element = layui.element();
	  
	});
	</script>
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
      
    </div>  
      <div>
      	<table class="layui-table" style="width:100%">
		  <colgroup>
		    <col>
		  </colgroup>
		  <thead>
		    <tr>
		      <th>编号</th>
		      <th>分类</th>
		      <th>名称</th>
		      <th>学习人数</th>
		      <th>难度级别</th>
		      <th>课程时长</th>
		      <th>课程须知</th>
		    </tr> 
		  </thead>
		  <tbody>
		  <c:forEach items="${requestScope.LIST }" var="item">
		    <tr>
		      <td>${item.id}</td>
		      <td>${item.categoryName}</td>
		      <td>${item.name}</td>
		      <td>${item.count}</td>
		      <td>${item.level}</td>
		      <td>${item.time}</td>
		      <td>${item.notice}</td>		          
		    </tr>
		    </c:forEach>
  			</tbody>
		</table>
      	
      </div>
  </body>
</html>
