<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <link href="<c:url value='/static/css/bootstrap.min.css' />" rel="stylesheet"></link>  
    <link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/lrtk.css' />" rel="stylesheet"></link>
    <script type="text/javascript" src="<c:url value='/static/js/jquery-3.1.0.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/js/lrtk.js' />"></script>
</head>


<div class="header">
    <nav class="navbar navbar-default" role="navigation">
      <div class="container">

     <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse"
         data-target="#example-navbar-collapse">
         <span class="sr-only">切换导航</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
      </button>
       <div class="logo" style="background-image: url(<c:url value='/static/image/logo.png' />)">

       </div>
     </div>
     <div>
       <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
           <li class="active" id="main"><a href="main.html">首页</a></li>
           <li ><a href="#">学院介绍</a></li>
           
           <li ><a href="#">课程介绍</a></li>
           <li ><a href="#">导师展示</a></li>
           <li ><a href="#">学员风采</a></li>
           <li ><a href="#">营养健康</a></li>
           <li ><a href="#">就业前景</a></li>
           <li id="onlineregister"><a href="onlineregister.html">在线报名</a></li>
           <li id="community"><a href="#">美勤社区</a></li>
           <li id="register">
           <p class="logintop" style="padding-left:16px">
	          
	   <c:choose>
	    
	    	<c:when test="${!empty user}" >
	    		<a href="personal.html" style="color:#9933FF;padding-left:10px;padding-right:10px">${nickName}</a>
	           <a href="<c:url value="/logout" />" style="color:#9933FF">登出</a> 
	    	</c:when>
	    	<c:otherwise>
	    		 <a href="login.html" style="color:#9933FF;padding-left:10px">登录</a>
		       <a href="register.html" style="color:#9933FF">注册</a>
           
	    	</c:otherwise>
	  </c:choose>
	       </p>
           </li>
        </ul>
      </div>
     </div>
   </div>
  </nav>
  </div>

</html>