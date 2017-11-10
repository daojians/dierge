<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'My1.jsp' starting page</title>
    
	
    <style type="text/css">
	   *{margin: 0; padding:0}
	   body{}
	   .TUP{z-index:10;position: absolute;}
	   
	   .Bei{color: #154BA0;background: #666666;filter: Alpha(Opacity=10, Style=0);opacity: 0.10; position: absolute;height: 100%;width:100%;z-index:20;}
	   .jiemian{border: 1px solid #cccccc;width: 500px;height: 340px;background-color: white;position: absolute;z-index:30;margin-left: 662px;margin-top: 230px}
	   
	   .del,.zhc{padding:  15px;float: left; text-decoration: none;color: #666666}
	   .cha{float: right;padding:15px;color: red}
	   hr{width: 350px;}
	   .KK{text-align: center;}
	   .DENG:HOVER {cursor: pointer;}
	   

    
        .zc{display: none;}
        .xs{display: block}
        .xc1{display: none;}
        
	</style>
	
	
	<script type="text/javascript" src="jquery-1.11.0.js"></script>
    <script>
        $(function () {
            $(".del").click(function () {
                $(".dl").removeClass("xc1");
                $(".zc").removeClass("xs");

                $(".dl").addClass("xs");
                $(".zc").addClass("xc1");



            });
            $(".zhc").click(function () {
                $(".dl").addClass("xc1");
                $(".zc").addClass("xs");

                $(".dl").removeClass("xs");
                $(".zc").removeClass("xc1");
            })
        })

    </script>
  </head>
  
  <body>
  <div class="TUP"><img src="image/11.jpg" width="100%"; height="100%"></div>
  <div class="Bei">
  </div>
     <div class="jiemian">
       <div class="item">
       <tr>
          <td><a href="#"  class="del">登录</a></td>
          <td><a href="#"  class="zhc">注册</a></td>
       </tr>
        <p class="cha">X</p>       
        <hr style="width: 100%">
        <br>
        
        
        <!-- 登录 -->
        <div class="dl">
        <form action="IUsersLoginServlets" method="post">
	        <div class="KK">
	        <tr>
	        <td><input type="text" id="title" name="title" style="width:300px; height: 35px; color: #ccc;text-indent: 1em;" value="请输入登录游戏/手机号"
	        onblur="if(this.value==''){this.value='请输入登录游戏/手机号'}"
	          onfocus="if(this.value=='请输入登录游戏/手机号'){this.value=''}">
	        </td> 
	        </tr>
	         </div>
	         <br>
	         <div class="KK">
	           <tr>
	          <td><input type="text" id="password" name="password" style="width:300px; height: 35px; color: #ccc;text-indent: 1em;" value="6-16位密码,区分大小写,不能用空格"
	            onblur="if(this.value==''){this.value='6-16位密码,区分大小写,不能用空格'}"
	          onfocus="if(this.value=='6-16位密码,区分大小写,不能用空格'){this.value=''}">
	          </td> 
	          </tr>
	         </div>
	         
	         <br>
	         
	         <div class="GN">
	            <tr>
	               <td><input type="checkbox" style="margin-left: 100px ;">&nbsp;<spen style="font-size:12px;color: #666666">下次自动登录</spen></td>
	               <td><spen style="margin-left: 60px ;font-size:12px;color: #ccc">忘记密码</spen></td>
	            </tr>
	         </div>
	         <br>
	         
	         <div class="DENG" style="width: 240px;height: 45px;background: #95A3BA;margin-left: 120px;margin-top: 13px">
	         <div style="text-align: center;padding-top: 12px;">
	                <input type="submit" style=" font-size: 14px;color: #FFFFFF;text-decoration: none;background-color: transparent;border: none;" value="登录">
	         </div>
	         </form>
	         </div>
	         
	       
         </div>
         <!-- 注册 -->
         <div class="zc">
             <form action="UsersAddServlet" method="post">
         	   <div class="KK">
		        <tr>
		        <td><input type="text" id="username" name="username" style="width:300px; height: 35px; color: #ccc;text-indent: 1em;" value="请输入账号"
		        onblur="if(this.value==''){this.value='请输入账号'}"
	          onfocus="if(this.value=='请输入账号'){this.value=''}">
		        
		        </td>        
		        </tr>
		         </div>
		         <br>
		         <div class="KK">
		           <tr>
		             <td><input type="text" id="password" name="password" style="width:300px; height: 35px; color: #ccc;text-indent: 1em;" value="请输入密码"
		               onblur="if(this.value==''){this.value='请输入密码'}"
	          onfocus="if(this.value=='请输入密码'){this.value=''}">
		             </td> 
		           </tr>
		         </div>
		         
		           <br>
	         <div class="KK">
	           <tr>
	          <td><input type="text" id="email" name="email" style="width:300px; height: 35px; color: #ccc;text-indent: 1em;" value="请输入邮箱"
	                 onblur="if(this.value==''){this.value='请输入邮箱'}"
	          onfocus="if(this.value=='请输入邮箱'){this.value=''}"></td> 
	          </tr>
	         </div>
		         
		         <br>
		         <div class="DENG" style="width: 240px;height: 45px;background: #95A3BA;margin-left: 120px;">
		         <div style="text-align: center;padding-top: 12px;">
		                   <input type="submit" style=" font-size: 14px;color: #FFFFFF;text-decoration: none;background-color: transparent;border: none;" value="注册">
		         </div>
		         </div>
		         
		         <br>
  
         </div>
         
</div>
  </body>
</html>
