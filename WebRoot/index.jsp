<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty requestScope.LISTS }">
	<c:redirect url="Coursecxsservlet"></c:redirect>
</c:if>

<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    <style type="text/css">
    *{margin: 0;padding:0}
     html, body {height: 100%; margin: auto;  padding: 0;}
        ul{list-style: none;}
        .title .left a{color: black;font-size: 18px;padding:0 25px; }
        a{text-decoration: none;}
        .title .left li{list-style: none;float: left;}
        .left a{line-height: 80px;} 
        .right a{color: #666666;font-size: 17px;line-height: 80px;}
        .right li{list-style: none;float: left;padding: 0 25px}
        .right{float: right;}
        
    
    
     #container { width: 1200px; height: 460px; overflow: hidden; position: relative;margin-left: 145px}
        #list { width: 8400px; height: 460px; position: absolute; z-index: 1;}
        #list img { float: left;}
     #container:hover .arrow { display: block;}
    
    
        #buttons{position: absolute; height: 10px; width: 100px; z-index: 2; bottom: 20px; left: 250px;margin-left: 850px}
        #buttons span { cursor: pointer; float: left; border: 1px white; width: 13px; height: 13px; border-radius: 50%; background: #333; margin-right: 5px;}
        #buttons .on {  background: #666666;}
        
       .arrow { cursor: pointer;  line-height: 39px; text-align: center; font-size: 36px; font-weight: bold; width: 40px; height: 40px;  position: absolute; z-index: 2; top: 180px; background-color: RGBA(0,0,0,.3); color: #fff;}
       .arrow:hover { background-color: RGBA(0,0,0,.7);}
     
        #prev { left: 20px;}
        #next { right: 20px;}
        
      
        
        .recommended p{font-size: 23px;font-style: normal; margin-left: 150px;}
        
        .curses p{font-size: 23px;font-style: normal; margin-left: 150px;}
    
        .TuiJian p{font-size: 23px;font-style: normal; margin-left: 1px}
        
        .WEI div tr td a{color: red}
        
    </style>
    <script src="jquery-1.11.0.js"></script>
	 <script type="text/javascript">
	  $(function () {
            var container = $('#container');
            var list = $('#list');
            var buttons = $('#buttons span');
            var prev = $('#prev');
            var next = $('#next');
            var index = 1;
            var len = 6;
            var interval = 2000;
            var timer;


            function animate (offset) {
                var left = parseInt(list.css('left')) + offset;
                if (offset>0) {
                    offset = '+=' + offset;
                }
                else {
                    offset = '-=' + Math.abs(offset);
                }
                list.animate({'left': offset}, 400, function () {
                    if(left > -200){
                        list.css('left', -1200 * len);
                    }
                    if(left < (-1200 * len)) {
                        list.css('left', -1200);
                    }
                });
            }

            function showButton() {
                buttons.eq(index-1).addClass('on').siblings().removeClass('on');
            }

            function play() {
                timer = setTimeout(function () {
                    next.trigger('click');
                    play();
                }, interval);
            }
            function stop() {
                clearTimeout(timer);
            }

            next.bind('click', function () {
                if (list.is(':animated')) {
                    return;
                }
                if (index == 6) {
                    index = 1;
                }
                else {
                    index += 1;
                }
                animate(-1200);
                showButton();
            });

            prev.bind('click', function () {
                if (list.is(':animated')) {
                    return;
                }
                if (index == 1) {
                    index = 6;
                }
                else {
                    index -= 1;
                }
                animate(1200);
                showButton();
            });

            buttons.each(function () {
                 $(this).bind('click', function () {
                     if (list.is(':animated') || $(this).attr('class')=='on') {
                         return;
                     }
                     var myIndex = parseInt($(this).attr('index'));
                     var offset = -1200 * (myIndex - index);

                     animate(offset);
                     index = myIndex;
                     showButton();
                 })
            });

            container.hover(stop, play);

            play();

        });
	 
	 
	 </script>
	 
  </head>
  
  <body >

     
     <div class="page" style="width: 100%">
     <div style="width:1450px;margin:0px auto;">
     
     
     <!-- 标题 -->
        <div class="title" style="width: 1500px;">
           <ul class="left">
              <li><img src="image/2.png"></li>
              <li><a href="kcfl.jsp">课程</a></li>
             <li><a href="#">职业路径<img src="image/8.jpg" style="margin-bottom: 10px"></a></li>
              <li><a href="#">实战</a></li>
              <li><a href="#">猿问</a></li>
              <li><a href="#">手记</a></li>
           </ul>
           <ul class="right">
              <li style="line-height: 90px;"><input type="text" style="border-top-style:none;border-right-style:none;border-left-style:none;height: 15px;width: 200px"><span><img src="image/7.png" style="margin-top: 10px;"></span></li>
              <li><a href="#">购物车</a></li>
              <li><a href="Login.jsp">登录</a></li>
              <li><a href="#">注册</a></li>      
           </ul>
        </div>
       
        <div style="width: 1500px;color: white;"></div>
       
       
       
       
       
       
     <!-- 大图 -->   
       
<div id="container">
    <div id="list" style="left: -1200px;">
        <img src="image/5.jpg" alt="1"/>
        <img src="image/1.jpg" alt="1"/>
        <img src="image/2.jpg" alt="2"/>
        <img src="image/3.jpg" alt="3"/>
        <img src="image/4.jpg" alt="4"/>
        <img src="image/5.jpg" alt="5"/>
        <img src="image/1.jpg" alt="5"/>
    </div>
    <div id="buttons">
        <span index="1" class="on"></span>
        <span index="2"></span>
        <span index="3"></span>
        <span index="4"></span>
        <span index="5"></span>
    </div>
    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
    <a href="javascript:;" id="next" class="arrow">&gt;</a>
</div>

   <!-- 课程概括 -->
        <div class="summary" style="box-shadow: 10px 10px 5px #888888;margin-left: 150px;width: 1200px;text-align: center;">
        <tr>
           <td><a href="ICategoryselectservlet"><img src="image/15.png" style="width: 230px"></a></td>
           <td><a href="ICategoryselectservlet"><img src="image/12.png" style="width: 230px"></a></td>
           <td><a href="ICategoryselectservlet"><img src="image/14.png" style="width: 230px"></a></td>
           <td><a href="ICategoryselectservlet"><img src="image/13.png" style="width: 230px"></a></td>
           <td><a href="ICategoryselectservlet"><img src="image/11.png" style="width: 230px"></a></td>
        </tr>
     
     </div>
        
        <br><br><br>
     
     <!-- 实战推荐 -->
    <div class="recommended" style="height: 328px;width: 1400px" >
     <p>实战推荐</p>
     <div style="margin-left: 110px;width: 100%">
     	<c:forEach items="${requestScope.LISTS }" var="item" begin="1" end="5">
     	
   <div name="UU" style="position:relative;width: 226px;float: left;margin-left: 15px; margin-right: 18px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:3; top:80px;">
　　　　<ul style="width: 180px;margin-left: 30px">
         <li>${item.name }</li>
         <br>       
         <li style="font-size: 12px;color: #666666">${item.description }</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">${item.count }人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
                 　
</div>
</div>
       </c:forEach>
       </div>
</div>
	<br>
 
    <!-- 免费课程 -->  
    <div class="curses" style="width: 1400px;height: 328px;">
       <p>免费课程</p>
 
   <div name="UU" style="position:relative;width: 226px;float: left;margin-left: 125px;margin-right: 18px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:2; top:80px;margin-left: 30px">
　　　　<ul style="width: 180px;">
         <li>BAT大咖助力 全面升级Android面试</li>
         <br>
         
         <li style="font-size: 12px;color: #666666">2017最全面的Android面试课程,赢取称心offer的不二之选</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">602人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
</div>
</div>


 
   <div name="UU" style="position:relative;width: 226px;float: left;margin: 0 15px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:3; top:80px;">
　　　　<ul style="width: 180px;margin-left: 30px">
         <li>BAT大咖助力 全面升级Android面试</li>
         <br>
         
         <li style="font-size: 12px;color: #666666">2017最全面的Android面试课程,赢取称心offer的不二之选</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">602人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
                 　
</div>
　　</div>



 
   <div name="UU" style="position:relative;width: 226px;float: left;margin:0 15px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:3; top:80px;">
　　　　<ul style="width: 180px;margin-left: 30px">
         <li>BAT大咖助力 全面升级Android面试</li>
         <br>
         
         <li style="font-size: 12px;color: #666666">2017最全面的Android面试课程,赢取称心offer的不二之选</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">602人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
                 　
</div>
</div>


 
   <div name="UU" style="position:relative;width: 226px;float: left;margin: 0 15px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:3; top:80px;">
　　　　<ul style="width: 180px;margin-left: 30px">
         <li>BAT大咖助力 全面升级Android面试</li>
         <br>
         
         <li style="font-size: 12px;color: #666666">2017最全面的Android面试课程,赢取称心offer的不二之选</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">602人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
                 　
</div>
</div>

 
   <div name="UU" style="position:relative;width: 226px;float: left;margin: 0 15px;clear:none;">
　　<img src="image/17.png" />
　　<div style="position:absolute; z-index:3; top:80px;">
　　　　<ul style="width: 180px;margin-left: 30px">
         <li>BAT大咖助力 全面升级Android面试</li>
         <br>
         
         <li style="font-size: 12px;color: #666666">2017最全面的Android面试课程,赢取称心offer的不二之选</li>
         <br>
         
         <li><span style="color: #666666;font-size: 12px;">602人在学</span><span style="font-size: 12px;color: red;float: right;">免费</span></li>
</ul>
                 　
</div>
</div>

</div>

     <!-- 课程推荐 -->
      <div class="TuiJian" style="width: 1500px;height: 400px;">
          <div style="margin-left: 150px"><p>前端开发工程师</p></div> 
          <br>
          <div style="height: 350px ;width: 230px;margin-left: 120px;float: left;margin-top: 5px;clear:none;"><img src="image/18.png"></div>
          
          
          
          <div style="width: 986px;float:left;margin-left: 38px">
             <span style="float:left;"><img src="image/19.png"></span>
          <img src="image/20.png" style="float:right;">
       </div>
      
         <div style="width: 1100px;float: left;margin-left: 33px;clear:none;">
         <img src="image/21.png">
         <img src="image/21.png">
         <img src="image/21.png">
         <img src="image/21.png">
         </div>
     
      </div>
      
      <br>
      <!-- 结尾 -->
      <div class="WEI" style="">
          <div style="margin-top: 30px;text-align: center;">
             <div style="margin-bottom: 40px">
                 <tr>
                    <td><img alt="" src="image/25.png"></td>
                    <td><img alt="" src="image/26.png"></td>
                    <td><img alt="" src="image/27.png"></td>
                    <td><img alt="" src="image/28.png"></td>   
                 </tr>
             
             </div>
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
             <hr style="width: 1200px;margin-left: 150px;margin-top: 40px;">
             
             <div style="color: #666666;margin-top: 40px;margin-bottom: 10px;">© 2017 imooc.com  京ICP备 13046642号-2</div>
          </div>
      
      
      </div>
     </div>
     </div>
  </body>
</html>




























