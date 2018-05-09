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

<div class="container" style="margin-top: 150px;">
    <div class="row clearfix">
        <div class="col-md-4 column">
            <img alt="140x140" src="static/image/iPhone7.jpg" />
        </div>
        <div class="col-md-6 column">
            <h3>
                iphone7
            </h3>
            <p style="text-decoration: line-through;font-size: xx-large;">市场价：3899</p>
            <p style="color: rgb(255,68,0);font-size: xx-large;">商城价：3499</p>
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
            <p>iPhone 7是Apple（苹果公司）第10代手机，北京时间2016年9月8日凌晨1点在美国旧金山比尔·格雷厄姆市政礼堂2016年苹果秋季新品发布会上发布。
                iPhone 7拥有金色、银色、玫瑰金色、黑色、亮黑色、红色(特别版，后增加)六种颜色。
                Home键有了全新的设计，添加了振动反馈。并且支持IP67防溅抗水防尘功能 ，前/后单摄像头，防抖功能，新增了速度更快的A10 Fusion处理器。
                iPhone 7取消了3.5mm耳机接口，推出新耳机Apple AirPods，采用W1芯片，有传感器，电池，都放在小小的耳机机身中。
                iPhone 7 Plus的电池容量只有2900mAh，相比iPhone 6 Plus上的2915mAh在容量上还小那么一点点，却能建立在更强悍的A10 Fusion处理器上多提供超过一个小时的续航时间,iPhone 7 Plus使用双摄像头。
                新iPhone取消了16GB机型，最低存储容量为32GB，另外两个容量是128GB和256GB。
                2017年3月21日，2017苹果春季新品发布会发布，iPhone 7推出红色特别版提供128GB和256GB存储容量的机型，起售价为人民币6,188 元。</p>



        </div>



    </div>

</div>



<script type="text/javascript" src="staitc/js/jquery-2.1.1.min.js" ></script>

<script type="text/javascript" src="staitc/js/bootstrap.min.js" ></script>
</body>
</html>
<%--<jsp:include page="${pageContext.request.contextPath}/bottom" />--%>
<jsp:include page="bottom.jsp"></jsp:include>