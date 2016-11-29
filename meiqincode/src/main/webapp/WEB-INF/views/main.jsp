<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">


  <body>
   <%@ include file="head.jsp" %>
    <div class="container">
    <div class="blog_title_wrapper" style="background-image: url(<c:url value='/static/image/bk.jpeg' />)">
      <div class="blog_title">
        <span class="field-content">专为女性科学健身打造</span>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <h1 class="meiqin-title">课程介绍</h1>
        <h3 class="meiqin-subtitle">三大课程类别供您选择</h3>
      </div>
    </div>
    <div class="row">
   <div class="col-sm-6 col-md-4">
      <div class="thumbnail">
         <a href="#"><img src="<c:url value='/static/image/gsz.png' />"></a>
         <div class="caption">
            <h3>高素质全能教练课程</h3>
            <p>各类证书认证。</p>
         </div>
      </div>
   </div>
   <div class="col-sm-6 col-md-4">
      <div class="thumbnail">
         <a href="#"><img src="<c:url value='/static/image/gxl.png' />"></a>
         <div class="caption">
            <h3>高学历提升专业展示</h3>
            <p>通过学习获得国家承认的各类资格和学历证书！</p>

         </div>
      </div>
   </div>
   <div class="col-sm-6 col-md-4">
      <div class="thumbnail">
         <a href="#"><img src="<c:url value='/static/image/female.png' />"></a>
         <div class="caption">
            <h3>女性家庭健康专家课程</h3>
            <p>引领中国女性家庭健康事业！</p>

         </div>
      </div>
   </div>

</div>






</div>







<%@ include file="footer.jsp" %>


  </body>
</html>
