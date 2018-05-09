<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/bootstrap.min.css" />
	<style type="text/css">


	
		.headerTitle{
			color: white;
		}
		
		.headerTitle:hover{
			color: rgb(255,68,0);
			cursor: pointer;
		}
		
	</style>

</head>
<body>
<div class="container-fluid">
	<div class="row clearfix">
		<div class="col-md-12 column" style="background: black;">
			<h3 style="color: white;">
				网上数码商城
			</h3>
			<div class="row">
			<div class="col-lg-8 column"></div>
			<div class="col-lg-1 column">
			<p class="headerTitle">购物车</p>
			</div>





			<c:if test="${empty user }">
			<div class="col-lg-1 column">
			<p class="headerTitle" onclick="TurnToLogin()">登陆</p>
			
			</div>
			
			<div class="col-lg-1 column">
			<P class="headerTitle" onclick="TurnToResign()">注册</P>
			</div>
			</c:if>
			
			<c:if test="${!empty user }">
				<div class="col-lg-1 column">
			<p class="headerTitle" onclick="personCenter()">个人中心</p>
			
			</div>
			
			
				<div class="col-lg-1 column">
			<p class="headerTitle" onclick="quit()">退出</p>
			
			</div>
			</c:if>

				<c:if test="${user.authority==1}">
					<div class="col-lg-1 column">
						<a href="#">后台管理</a>

					</div>

				</c:if>
			
			</div>
			<ul class="breadcrumb" ">
				<li>
					 <a href="#">首页</a>
				</li>
				<li>
					 <a href="${pageContext.request.contextPath }/paper/product?currentPage=1">商城</a>
				</li>
				<li class="active">
					Data
				</li>
			</ul>
		</div>
	</div>
</div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>
    <script>
    	
    	function TurnToLogin(){
    		window.location.href="${pageContext.request.contextPath }/shopping/login"
    	
    		
    	}
    	function TurnToResign(){
    		window.location.href="${pageContext.request.contextPath }/shopping/resign"
    		
    		
    	}
    	function quit(){
    		window.location.href="${pageContext.request.contextPath }/user/quit"
    		alert("退出成功");
    		
    	}
    	
    	
    		$(function(){
    	
    			
    			$.ajax({
    	    		url:"${pageContext.request.contextPath }/header/producttype",
    	    		type:"post",
    	    		dataType:"json",
    	    		cache:false,
    	    		success:function(data){
    	    			var str="<li><a href='${pageContext.request.contextPath }/shopping/index'> 首页</a></li>";
    	    			
    	    			for(var i=0;i<data.length;i++){
    	    				
    	    				str+="<li><a href='${pageContext.request.contextPath }/shopping/product?cno="+data[i].cno+"'>"+data[i].productname+"</a></li>";
    	    				
    	    			}
    	    			$(".breadcrumb").html(str);
    	    		}
    	    		
    	    		
    	    		
    	    		})
    			
    		})
    		
    	
    	
    	
    	
    </script>
</body>
</html>