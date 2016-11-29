<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<style>   
.error {   
    color: #ff0000;   
    font-weight: bold;   
}   
</style>   

<body>
 <%@ include file="headtwo.jsp" %>

 
	<form:form method="POST" modelAttribute="register"  class="form-horizontal" role="form">
		<form:input type="hidden" path="id" id="id"/>
		
		<div class="col-sm-12 register_wrapper" style="background-image: url(<c:url value='/static/image/run.png' />)">
		<br /><br /><br />
		<div class="col-sm-7"></div>
		<div class="col-sm-4">
		<div class="panel panel-info">
		   <div class="panel-heading">
		      <h3 class="panel-title">美勤注册</h3>
		   </div>
		   <div class="panel-body">
		   <br />
		  <div class="form-group">
          	<label for="loginName" class="col-sm-4 control-label">用户名：</label>
          	<div class="col-sm-8">
            	<form:input path="loginName" id="loginName" class="form-control" required="required" />
            	<form:errors path="loginName" cssClass="error"/>
         	</div>
         </div>
         <div class="form-group">
          	<label for="nickName" class="col-sm-4 control-label">昵称：</label>
          	<div class="col-sm-8">
            	<form:input path="nickName" id="nickName" class="form-control" required="required" />
         		<form:errors path="nickName" cssClass="error"/>
         	</div>
         </div>
         <div class="form-group">
          	<label for="password" class="col-sm-4 control-label">密码：</label>
          	<div class="col-sm-8">
            	<form:input path="password" id="password" type="password" class="form-control" required="required" />
         		<form:errors path="password" cssClass="error"/>
         	</div>
         </div>
         <div class="form-group">
         	<label for="pnumber" class="col-sm-4 control-label">手机号：</label>
          	<div class="col-sm-8">
            	<form:input path="phoneNumber" id="phoneNumber" class="form-control" required="required" />
         		<form:errors path="phoneNumber" cssClass="error"/>
         	</div>
         </div>
         <div>
         <div class="col-sm-4"></div>
         <div class="col-sm-8">
         	<c:choose>
					<c:when test="${edit}">
							<input type="submit" value="Update"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="立即注册" class="btn btn-info" />
						</c:otherwise>
			</c:choose>
       	 </div></div>
       	 <div>
       	 <br />
       	 <div class="col-sm-4"></div>
       	 <div class="col-sm-8" style="font-size:12px;">
       	 已有账户？点此 <a href="<c:url value='/main' />" style="color:#4183C4">登录</a>
       	 </div>
       	 </div>
		<table>
			
	    
	
			<tr>
				<td colspan="3">
					
				</td>
			</tr>
		</table>
		</div></div>
		</div>
		<div class="col-sm-4"></div>
		</div>
	</form:form>
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