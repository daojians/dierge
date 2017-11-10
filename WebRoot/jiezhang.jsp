<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty requestScope.LIST }">
	<c:redirect url="jiezhangServlet"></c:redirect>
</c:if>

<html>
  <head>
    <title>慕课网</title>
<style type="text/css">

      *{margin: 0;padding: 0;}
        .top{height: 70px;width: 100%;background-color: black;}
         a{text-decoration: none;}
         ul{list-style: none;}
         li{list-style: none;}
        .top .left li a{color: white;margin: 0 22px;}
        .top .left li{float: left;}
        .top .left .TT{margin-top: 23px}
        .top .right{float: right;clear:none;}
        .top .right li{float: left;clear:none;margin-top: 20px}
        .top .right li a{margin: 20px;color: white;}
        
        .you li{float: left;margin: 10px 20px;color: gray;}
        .you{margin-left: 300px}
        
        div .chapter{margin-left: 300px }
        div .chapter {margin-top: 50px}
        .section ul li{margin-left: 300px;font-size: 20px;font-family: 新宋体;font-weight: bold;}
        
        .advertising* div ul li{margin: 20px 0px}
</style>
</head>

<body style="width: 100%;">

	<div class="ZhuTi" style="height: 100%;">
		
			<!-- 页面*1 -->
			<div class="top">
			<div style="width: 1750px">
				<ul class="left">
				    <li><a href="index.jsp"><img src="image/29.png" style="margin: 15px 15px"></a></li>
					<li class="TT"><a href="#">课程</a></li>
					<li class="TT"><a href="#">职业路径</a></li>
					<li class="TT"><a href="#">实战</a></li>
					<li class="TT"><a href="#">猿问</a></li>
					<li class="TT"><a href="#">手记</a></li>
				</ul>
               </div>
			</div>
			
	    	<!-- 页面*2 -->
		     <div class="bj" style="background-image: url('image/97.png');height: 200px;margin-top: -35px;background-repeat: repeat-x">
			    <h1 style="margin-top: 30px;margin-left: 500px;padding-top: 20px"></h1>
			      <div><h1 style="color: white;margin-left: 323px;margin-bottom: 20px">章节名称</h1></div>
			   <c:forEach items="${requestScope.LISTS }" var="item">
			   <ul class="you">
				 <li><img alt="" src="image/99.png"></li>
				 <li>学习人数<br>${item.count}</li>
			  	 <li>难度级别<br>${item.level}</li>
				 <li>课程时长<br>${item.time}</li>
			   </ul>
			  </c:forEach>
             </div>
	    	
	    	
	        <!-- 页面*3 -->
	        <div style="width: 100%;height: 700px;background-color: white;">
	        
	         <div style="width: 1700px;margin: 0 auto;">
	            <!-- 标题栏 -->
	            <div class="chapter" style="width: 700px">
	                <tr>
	                   <td><a href="#" style="font-size: 20px;color: black;margin: 30px;">章节</a></td>
	                   <td><a href="#" style="font-size: 20px;color: black;margin: 30px;">评论</a></td>
	                   <td><a href="#" style="font-size: 20px;color: black;margin: 30px;">问答</a></td>
	                   <td><a href="#" style="font-size: 20px;color: black;margin: 30px;">笔记</a></td>
	                </tr>
	            </div>
	            
	           
	               <!-- 广告 -->
                <div class="advertising*" style="width: 350px;height: 270px;background-color: #EDF1F2;float: right;margin-right: 250px;clear: none;">
                   <div style="margin: 30px">
                    <ul>
                        <li style="font-weight: bold;color: #70555D;margin: 10px 0">课程须知</li>
                        <li style="color: #666;margin: 10px 0">此部分为Java入门教程，适合零基础的小伙伴们，赶紧开始学习吧。</li>
                        <li  style="font-weight: bold;color: #70555D;margin-top: 20px;margin-bottom: 10px">老师告诉你能学到什么？</li>
                        <li style="color: #666;">1、会配置Java开发环境，并使用工具进行程序开发 </li>
                        <li style="color: #666;">2、掌握Java中基本语法的使用并入门 </li>
                        
                    
                    </ul>
                   </div>
                </div>
                
	            <hr style="width: 800px;margin:30px 0;margin-left: 100px">
	            <!-- 小节 -->
	            <div class="section" style="width: 700px">
	                <ul style="line-height: 70px;margin-left: 30px">
	                	 <c:forEach items="${requestScope.LIST }" var="item">
	                   <li><a href="shipingservlet?id=${item.id }">${item.title }</a></li>
	                    <hr style="width: 500px;margin-left: 300px">
	                    </c:forEach>
     
	                </ul>
	            </div>
	       </div>
              
            </div>  
	 
	        <!-- 页面*4 -->
	        <div style="width: 100%;height: 120px;background-color: black;">
	        	<table style="margin-top: 30px;margin-left: 500px;padding-top: 30px">
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
          <div style="color: #666666;margin-top: 40px;margin-bottom: 10px;margin-left: 750px">? 2017 imooc.com  京ICP备 13046642号-2</div>
	        
	        
	        </div>  	
	        
</div>
</body>
</html>

