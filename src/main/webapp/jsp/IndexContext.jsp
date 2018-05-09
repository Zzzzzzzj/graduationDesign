<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
</head>
<body>
	 <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-3840">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-3840">
					</li>
					<li data-slide-to="1" data-target="#carousel-3840">
					</li>
					<li data-slide-to="2" data-target="#carousel-3840">
					</li>
				</ol>
				<div class="carousel-inner">
					<%--<div class="item active">--%>
						<%--<img alt="" src="${pageContext.request.contextPath }/static/image/SurfaceLaptop.jpg" />--%>
						<%--<div class="carousel-caption">--%>
							<%--<h4>--%>
								<%--SurfaceLaptop--%>
							<%--</h4>--%>
							<%--<p>--%>
								<%--Surface Laptop最引人注目的就是全机上下出色的金属质感，看起来非常的养眼，而且整体的做工也十分扎实，在材料选择和细节上都有很好的雕琢，键盘的周边是以微软近来偏爱的Alcantara布料包裹，彰显档次的同时，摸上去的手感也非常的舒适。--%>
							<%--</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="item">--%>
						<%--<img alt="" src="${pageContext.request.contextPath }/static/image/ThinkPadX1.jpg" />--%>
						<%--<div class="carousel-caption">--%>
							<%--<h4>--%>
								<%--ThinkPadX1--%>
							<%--</h4>--%>
							<%--<p>--%>
								<%--ThinkPad自问世以来一直保持着黑色的经典外观并对技术有着自己独到的见解，如：TrackPoint（指点杆，俗称小红帽）、ThinkLight键盘灯、全尺寸键盘和APS（Active Protection System，主动保护系统）。--%>
							<%--</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="item">--%>
						<%--<img alt="" src="${pageContext.request.contextPath }/static/image/华为荣耀8.jpg" />--%>
						<%--<div class="carousel-caption">--%>
							<%--<h4>--%>
								<%--华为荣耀8--%>
							<%--</h4>--%>
							<%--<p>--%>
								<%--ThinkPad自问世以来一直保持着黑色的经典外观并对技术有着自己独到的见解，如：TrackPoint（指点杆，俗称小红帽）、ThinkLight键盘灯、全尺寸键盘和APS（Active Protection System，主动保护系统）。--%>
							<%--</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<c:forEach items="products" var="i">
						<div class="item active">
							<img alt="" src="${i.pimage}" />
							<div class="carousel-caption">
								<h4>
									${i.pname}
								</h4>
								<p>
									${i.pdesc}
								</p>
							</div>
						</div>
					</c:forEach>
				</div> <a class="left carousel-control" href="#carousel-3840" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-3840" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>


 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>
</body>
</html>