<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>视频教程</title>
    <link rel="stylesheet" href="admin/layui-v1.0.9_rls/layui/css/layui.css">
	<script type="text/javascript" src="admin/layui-v1.0.9_rls/layui/layui.js"></script>
    <style type="text/css">
    *{margin: 0;padding: 0}
    li{list-style: none;}
    .you ul{margin-left: 20px}
    .you ul hr{width: 300px;margin-right: 300px}
    </style>

  </head>
  
  <body>
    <div>
    	<div style="width: 100%;height: 60px;background-color:#14191E;">
    		
    	</div>
    	<div style="width: 100%;text-align: center;height: 800px;background-color: black;">
		<video src="sp/java1.mp4" controls="controls" width="1360" height="760"></video>
		</div>
	</div>
	
	
	
	<div style="width: 100%;height: 800px;margin-top: 30px">
		<div style="width: 70%;float: left;">
		<ul style="margin-left: 430px">
			<li>
				<form action="spaddservlet" method="post">
				<h2 style="font-size: 15px;font-weight: bold;color: green;">评论</h2><hr style="width: 750px;margin-left: -200px">
					<textarea style="width: 710px;height: 100px" name="nr" required lay-verify="required" placeholder="请输入" class="layui-textarea"></textarea>
					 <button style="margin: 10px 0 0 620px" type="submit" class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				</form>
			</li>
		</ul>
		<c:forEach items="${requestScope.LIST}" var="item">
		<hr style="width: 750px;margin-left: 230px">
		<ul style="margin-left: 430px;line-height: 40px">
			<li style="font-weight: bold;font-size: 17px">${item.usersUsername }</li>
			<li>${item.content }</li>
			<li>${item.time }<img style="padding-left: 600px; cursor:pointer;" alt="" src="image/xs.png"></li>
		</ul>
		</c:forEach>
		</div>
		<div class="you" style="width: 30%;float: right;">
			<ul style="line-height: 30px">
				<li style="font-size: 20px;font-weight: bold;">猿问推荐</li><hr>
				<li>计算机专业20 回答</li><hr>
				<li>PHP操作MYSql问题4 回答</li><hr>
				<li>TP5访问路径问题1 回答</li><hr>
				<li>xshell和ubuntut怎么连接呢2 回答</li><hr>
				<li>请问达内公司可靠吗？4 回答</li>
			</ul>
		</div>
	</div>
	<!-- 尾部 -->
	<div style="background-color: black;height: 100px;">
		<table style="margin-top: 30px;margin-left: 500px;padding-top: 40px">
		  <tr>
                <td><a href="#" style="color: #666666;margin: 0 15px">企业合作</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">人才招聘</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">联系我们</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">讲师招募</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">常见问题</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">建议反馈</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">慕课大学</a></td>
                <td><a href="#" style="color: #666666;margin: 0 15px">友情链接</a></td>
             </tr>
          </table>
          <div style="color: #666666;margin-top: 40px;margin-bottom: 10px;margin-left: 750px">© 2017 imooc.com  京ICP备 13046642号-2</div>
	</div>
  </body>
</html>
