<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <link rel="stylesheet" href="layui-v1.0.9_rls/layui/css/layui.css">
	<script type="text/javascript" src="layui-v1.0.9_rls/layui/layui.js"></script>
    <title>后台登录</title>

  </head>
  
  <body>
  
  <div style="width: 100%;height: 100%;background-image: url('../image/4656-106.jpg');">
		<form class="layui-form" style="padding-top: 15%;padding-left: 38%" action="../UsersLoginServlet" method="post">
		<h1 style="font-size: 30px;font-weight: bold;margin-left: 90px">慕课网后台登录</h1>	
		<input type="text" style="width: 400px;margin: 10px" name="username" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">    
		 <input type="password" style="width: 400px;margin: 10px" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
		 <button class="layui-btn" style="width: 400px;margin-left: 10px" type="submit" lay-submit lay-filter="formDemo">立即登录</button>
		 </form>
	</div>
  </body>
</html>
