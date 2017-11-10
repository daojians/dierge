<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty requestScope.LIST }">
	<c:redirect url="ICategoryselectservlet"></c:redirect>
</c:if>

<c:if test="${empty requestScope.LISTS }">
	<c:redirect url="ICategoryselectservlet"></c:redirect>
</c:if>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'My.jsp' starting page</title>
<style>
     
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
       
         .topX1 .Lie{margin-left: 273px}
          .topX1 .Lie div{margin: 35px}

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
				<ul class="right">
					<li style=""><input type="text"
						style=""><span><img
							src="image/7.png" style=""></span></li>
					<li><a href="#">购物车</a></li>
					<li class="Log"><a href="#">登录</a></li>
					<li><a href="#">注册</a></li>
				</ul>
               </div>
			</div>
		
		
			<!-- 页面*2 -->
			<div class="topX1" style="width:100%;height:280px;background-color: white; ">
			   <div class="Lie" style="margin: 0 auto;width: 1200px">
			   
			   <div>
			      <tr>
			         <td class="TE"><span style="font-size: 18px;font-weight:bold;">方向:</span></td>
			         <td><a href="#" style="color: black;margin: 30px">全部</a></td>
			         <td><a href="#" style="color: black;margin: 30px">前端开发</a></td>
			         <td><a href="#" style="color: black;margin: 30px">后端开发</a></td>
			         <td><a href="#" style="color: black;margin: 30px">移动开发</a></td>
			         <td><a href="#" style="color: black;margin: 30px">数据库</a></td>
			         <td><a href="#" style="color: black;margin: 30px">云计算&大数据</a></td>
			         <td><a href="#" style="color: black;margin: 30px">运维&测试</a></td>
			         <td><a href="#" style="color: black;margin: 30px">UI设计</a></td>
			      </tr>
			    </div>
			    
			      <hr width="1266px">
			      
			       <div>
			      <tr>
			         <td class="TE"><span style="font-size: 18px;font-weight:bold;">分类:</span></td>
			         <td><a href="#" style="color: black;margin: 30px" onclick="location.href='IICategoryselectservlet?id=-1'">全部</a></td>
			         <c:forEach items="${requestScope.LIST }" var="item">
			         <td><a href="#" style="color: black;margin: 30px" onclick="location.href='IICategoryselectservlet?id=${item.id}'">${item.name }</a></td>
			         </c:forEach>
			      </tr>
			      </div>
			      	      <hr width="1266px">
			      	      
			      	      
			  <div>
			      <tr>
			         <td class="TE"><span style="font-size: 18px;font-weight:bold;">类型:</span></td>
			         <td><a href="#" style="color: black;margin: 30px">全部</a></td>
			         <td><a href="#" style="color: black;margin: 30px">基础</a></td>
			         <td><a href="#" style="color: black;margin: 30px">案例</a></td>
			         <td><a href="#" style="color: black;margin: 30px">框架</a></td>
			         <td><a href="#" style="color: black;margin: 30px">工具</a></td>
			         <td><a href="#" style="color: black;margin: 30px">设计模式</a></td>
			      </tr>
			       </div>
		      </div>
			</div> 

             <!-- 页面*3-->
			<div class="shenTI" style="background-color: #F3F5F7;width: 100%;height: 100%">
			              
			<div style="width: 1500px;margin: 0 auto;border: 1px solid;">              
        	<c:forEach items="${requestScope.LISTS}" var="item" begin="0" end="9">
        
            <a href="jiezhangServlet?idss=${item.id}"><div name="UU" style="position:relative;width: 250px;float: left; margin-right: 0px;clear:none;margin-left: 40px">
　                                   	<img src="image/17.png" style="height: 300px"/>
　　                                   <div style="position:absolute; z-index:3; top:80px;">
　　　                           　<ul style="width: 180px;margin-left: 30px">
                 <li>${item.name }</li><br>
                 <li style="font-size: 12px;color: #666666">${item.description }</li><br>
                 <li><span style="color: #666666;font-size: 12px;">${item.count }人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
                 
            </ul>
            </div>
			</div>
			</a>
			
			</c:forEach>             
			</div>
			</div>
		
		
		    <!-- 页面*4 -->
            <div style="width: 100%;height: 100px;background-color: black;">
  
            <div style="margin-left: 300px;width: 1200px;margin: 0 auto;margin-left: 350px">
          <br>
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
         
             
             <div style="color: #666666;margin-top: 10px;margin-bottom: 10px;"> ? 2017 imooc.com  京ICP备 13046642号-2</div>
          </div>
     
        
        </div>
        </div>
	
</body>
</html>























