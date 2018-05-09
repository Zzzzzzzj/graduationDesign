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
<body>
	<jsp:include page="header.jsp"></jsp:include>
		<div class="container" style="margin-top: 100px; margin-bottom: 200px;">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					Resign Paper<small>please input</small>
				</h1>
			</div>
			<form class="form-horizontal" role="form" id="resignForm" action="${pageContext.request.contextPath }/user/resign">
				<div class="form-group">
					 <label for="username" class="col-sm-2 control-label">username</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="username" name="username"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="password" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password"  name="password"/>
					</div>
				</div>
				<div class="form-group">
					<label for="realname" class="col-sm-2 control-label">realname</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="realname"  name="realname"/>
					</div>
					
					
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email"  name="email"/>
					</div>
					
					
				</div>
				
				<div class="form-group">
					<label for="telephone" class="col-sm-2 control-label">telphone</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="telephone"  name="telephone"/>
					</div>
					
					
				</div>
				
				
			
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-5 col-lg-offset-4 col-lg-3">
						 <button type="submit" class="btn btn-default">resign</button>
					</div>
					<div class="col-sm-5 col-lg-3">
						 <button class="btn btn-default" type="reset">clear</button>
					</div>
				</div>
				
			
				
				
			</form>
		</div>
	</div>
</div>

<jsp:include page="bottom.jsp"></jsp:include>

<!-- /Shopping/src/main/webapp/static/js/jquery.validate.js -->
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.1.min.js" ></script>
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/messages_zh.js" ></script>
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery.validate.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" ></script>
 
 
   <script  type="text/javascript">
    	$(function(){
		$("#resignForm").validate({
			rules:{
				"username":{
					required:true,
					isExist:true,
					/* minlength:8, */
					
				},
				"password":{
					required:true,
					minlength:8
				},
				"realname":{
					required:true,
					
				},
				"email":{
					required:true,
					email:true
				},
				"telephone":{
					required:true,
					digits:true,
					isMobile:true
				}
		}
		
	})
	});
    	
    	
    	jQuery.validator.addMethod("isMobile", function(value, element) {  
    	    var length = value.length;  
    	    var regPhone = /^1([3578]\d|4[57])\d{8}$/;  
    	    var flag=( length == 11 && regPhone.test( value ) );
			//alert(this.optional(element) || flag);
    	    return this.optional(element) || flag;    
    	}, "please input right phone");  
    		
    	
    	
    	jQuery.validator.addMethod("isExist", function(value, element) {  
           	
    		var flag1=true;
           	
    		$.ajax({
        			url:"${pageContext.request.contextPath }/user/AllUser",
        			type:"post",
        			dataType:"json",
        			cache:false,
        			async:false,
        			success:function(data){
        				
        				
        				for(var i=0;i<data.length;i++){
        					if(value==data[i].username){
        						flag1=false;
        						
        						break;
        					}
        					
        				}
        			 	   
        				
        			
        				
        			}
        			
        		})
        		
        		return this.optional(element)||flag1;   
    	}, "Username Exist");  
	
	
    </script>
</body>
</html>