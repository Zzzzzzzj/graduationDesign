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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/css/bootstrap.min.css" />
<title>Insert title here</title>
<style>
img:hover {
	box-shadow: 0px 10px 5px #888888;
	transition: all 0.5s;
	cursor: pointer;
}
</style>


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid" style="margin-top: 100px;">
	<div class="row clearfix" style="height: 600px;">
		<c:forEach items="${list }" var="pro">
		<div class="col-md-3 column">
			<div style=" text-align: center;">
			<a href="${pageContext.request.contextPath}/product/productShow?pid=${pro.pid}">
			<img alt="140x140"   src="${pageContext.request.contextPath }/static/${pro.pimage }" class="img-rounded" style="width: 140px; height: 140px; "/>
			</a >
				<h5 style="text-align: center;">${pro.pname }</h5>
			</div>
		</div>
		
		
		
		
		
		</c:forEach>
		
		
		
	</div>
	</div>
 	<div class="row clearfix">
		<div class="col-md-12 column" align="center">
			<ul class="pagination">
 			<c:if test="${page.hasPreviousPage }">
 			<li>
 				<a href="${pageContext.request.contextPath }/shopping/product?cno=${cno }&currentPage=${page.prePage }">Prev</a>
 			</li>
 			</c:if>
 			
 			<c:forEach items="${page.navigatepageNums }" var="index">
 			<c:choose>
 				<c:when test="${page.pageNum==index }" >
 					<li>
 						<a style="color:red" href="${pageContext.request.contextPath }/shopping/product?cno=${cno }&currentPage=${index }"> ${index }</a>
 						
 					</li>
 				
 				</c:when>
 				<c:otherwise>
 					<li>
 					<a  href="${pageContext.request.contextPath }/shopping/product?cno=${cno }&currentPage=${index }"> ${index } </a>
 					</li>
 				</c:otherwise>
 			
 			</c:choose>
 			</c:forEach>
 			<c:if test="${page.hasNextPage }">
 				<li>
 				<a href="${pageContext.request.contextPath }/shopping/product?cno=${cno }&currentPage=${page.nextPage}">next</a>
 				</li>
 			</c:if>
 		</ul>
 	</div>
 </div>


	<jsp:include page="bottom.jsp"></jsp:include>





	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/js/bootstrap.min.js"></script>

	<script>
		function TurnToContextShow(data) {
            window.location.href="${pageContext.request.contextPath}/product/productShow?pid="+data.value;
        }
	</script>
</body>
</html>