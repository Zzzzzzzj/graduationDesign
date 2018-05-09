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
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<div class="container-fluid" style="margin-top: 100px;">
	<div class="row clearfix">
		<div class="col-md-3 column">
		</div>
		<div class="col-md-4 column">
			<h3>
				Login
			</h3>
			
			<div style="background-color: #2AABD2; width: 200px; height: 2px; margin-top: 50px;"></div>
			
			
		</div>
		<div class="col-md-5 column">
		</div>
	</div>
</div>
		

	<div class="container " style="margin-top: 100px; margin-bottom: 200px">
			<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/user/login">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3" name="username" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3" name="password" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 <label><input type="checkbox" name="remember" value="1" id="re"/>Remember me</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">Sign in</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="bottom.jsp"></jsp:include>
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>
 
  <script>
    	$(document).ready(function(){
    		
    		var m=1;
    		
    		if("${reUsername }"!=null){
    			$("#inputEmail3").val("${reUsername }")
    		}
    		else{
    			m=0;
    		}
    		if("${rePassword}"!=null){
    			$("#inputPassword3").val("${rePassword }")
    			
    		}
    		else{
    			m=0;
    		}
    		if(m==1){
    			
    			$("#re").prop("checked",true);
    		}
    		
    		
    	})
    	
    </script>
 
</body>
</html>