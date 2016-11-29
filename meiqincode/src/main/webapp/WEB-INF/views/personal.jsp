<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">


<body>
 <%@ include file="head.jsp" %>

 <div class="container">
      <div class="col-sm-12">
        <div class="col-sm-3 left-box">
          <div class="people">
            <div class="basic-info">
              <div class="avatar">
                <img src="<c:url value='/static/image/people.png' />">
              </div>
              <h3 class="loginname">${nickName}</h3>
              
              <a href="">编辑个人信息</a>
              <a href="">修改密码</a>
              
            </div>
          </div>
        </div>
        <div class="col-sm-offset-3 col-sm-9 left-right">
          <h3 style="color:#337ab7">我的动态</h3>
          <hr>
          <div class="my">
            <div class="dynamics">
              <div class="dynamic">
              <div class="target-border">
                <div class="target-dot"></div>
              </div>
              <h4>加入美勤</h4>
            </div>

           

        </div>
          </div>
        </div>
      </div>
    </div>
	
<%@ include file="footer.jsp" %>
</body>
<script>
   $(document).ready(function(){
	   $("#main").removeClass("active");
	   $("#onlineregister").removeClass("active");
	   $("#community").addClass("active");
	 });
   </script>
</html>