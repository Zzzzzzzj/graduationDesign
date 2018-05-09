<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/bootstrap.min.css" />
<title>Insert title here</title>
	<style type="text/css">
		
			#header{
				position: absolute;
				top: 200px;
				left: 700px;
			}
		
			#context{
				
				position: absolute;
				top: 200px;
				left: 820px;
				color: red;
			}
			
			#tail{
				
				position: absolute;
				top: 200px;
				left: 900px;
			}
			
		</style>
</head>
<body>
		<h3 id="header">${type }成功</h3>
		<h3 id="context"></h3>
		<h3 id="tail">后转跳回首页</h3>
	


 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>
 <script>
			var d=6;
			function myTime(){
				
			d--;	
			$("#context").html(d+"秒");	
			if(d==0){
				window.location.href="${pageContext.request.contextPath }/shopping/index";
				
			}
			
			}
	
	
	

		var time=setInterval(function(){myTime()},1000);
	
		
		
	</script>
</body>
</html>