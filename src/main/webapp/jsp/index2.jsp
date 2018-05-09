<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<frameset  rows="20%,*">
	<frame  frameborder="0" src="${pageContext.request.contextPath }/jsp/header.jsp" />
		<frameset rows="95%,*">
		<frame  frameborder="0" src="${pageContext.request.contextPath }/jsp/IndexContext.jsp" />
		<frame  frameborder="0" src="${pageContext.request.contextPath }/jsp/bottom.jsp">
		</frameset>
	</frameset>
	

 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>

</html>