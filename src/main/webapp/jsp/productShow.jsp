<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/4/19
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="${pageContext.request.contextPath}/shopping/header"></jsp:include>--%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->


    <link rel="stylesheet" href="static/css/bootstrap.min.css" />
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">

        button{
            width: 120px;
        }

        #buy:hover{
            background-color:rgb(255,217,188) ;

        }
        #buy{
            color: rgb(229,81,29);
            background: rgb(255,228,208);

        }

        #addCar{
            color: rgb(255,255,255);
            background: rgb(255,68,0);
        }

        #addCar:hover{
            background: rgb(242,45,0);

        }


    </style>
</head>
<body >

<div class="container" style="margin-top: 150px;margin-bottom:150px ">
    <div class="row clearfix">
        <div class="col-md-4 column">
            <img alt="140x140" src="${pageContext.request.contextPath}/static/${product.pimage}" style="width: 400px;height: 400px" />
        </div>
        <div class="col-md-6 column">
            <h3>
                ${product.pname}
            </h3>
            <p style="text-decoration: line-through;font-size: xx-large;">市场价：${product.marketPrice}</p>
            <p style="color: rgb(255,68,0);font-size: xx-large;">商城价：${product.shopPrice}</p>
            <div class="row clearfix" style="margin-top: 180px;">
                <div class="col-md-3 column">
                    <button type="button" class="btn btn-default" id="buy">购买</button>
                </div>
                <div class="col-md-6 column">
                    <button type="button" class="btn btn-default" id="addCar">添加至购物车</button>
                </div>
            </div>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-10">
            <h3> 商品详情</h3>
            <p>${product.pdesc}</p>



        </div>



    </div>

</div>



<script type="text/javascript" src="staitc/js/jquery-2.1.1.min.js" ></script>

<script type="text/javascript" src="staitc/js/bootstrap.min.js" ></script>
</body>
</html>
<%--<jsp:include page="${pageContext.request.contextPath}/bottom" />--%>
<jsp:include page="bottom.jsp"></jsp:include>