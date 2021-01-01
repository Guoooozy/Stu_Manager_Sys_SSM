<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>文章查重</title>
    <style type="text/css">
        html,body{
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }
        .div1{
            width: 600px;
            height: 70px;
        }
        .main{
            width: 600px;
            height: 420px;
            margin: 0 auto; /*水平居中*/
            border: 3px #3c8282 solid;
            position: relative;
            border-radius: 30px;
        }
        .main .title{
            padding: 5px 0 5px 30px;
            height: 30px;
            background-color: #2a7272;
            color: #333436;
            font-size: 18px;
            line-height: 30px;
            margin-bottom: 30px;
        }
        .main .button{
            height: 30px;
            color: #1cc09f;
            font-size: 18px;
            line-height: 30px;
            margin-top: 15px;
        }
        .main .button span{
            margin-right: 10px;
        }
        .main .c{
            height: 50px;
            margin-left: 180px;
        }
        .main .c1{
            color: #53ac4d;
            margin-left: 180px;
        }
        .classname{
            width: 160.8px;
            height: 22px;
        }
        a {
            font-size: 18px;
            text-decoration: none;
            color: #9bbd4a;
            font-weight:bold;
        }
    </style>
    <script>
        function tianjia()
        {
            var xg = confirm("是否确定上传此文件？");
            if(xg == true)
            {
                alert("确定上传！！！");
                document.forms.submit();
            }
            else
            {
                alert("取消上传！！！");
            }
        }
    </script>
</head>
<body>
<!--springmvc方式-->
<div class="div1"></div>
<div class="main">
    <div class="button" align="right">
        <a href="${pageContext.request.contextPath}/compare"><span>比较</span></a>
    </div>
    <div class="title">
        文章在线查重<span style="margin-left: 10px; font-size: 14px;">注：提交文件后会出现本文章20个关键词，以及在文章中出现的次数</span>
    </div>
    <div class="c" style="margin-top: 90px;">
        <form action="/upload1?flag=0" method="post" enctype="multipart/form-data">
            选择需要进行对比的文件：<input type="file" name="upload"/>
            <input type="submit" value="上传">
        </form>
    </div>
    <div class="c" style="margin-top: 90px;">
        <form  action="/upload1?flag=1" method="post" enctype="multipart/form-data">
            选择需要进行对比的文件：<input type="file" name="upload"/>
            <input type="submit" value="上传">
        </form>
    </div>
    相似度(根据关键字进行相似度对比):${result}<br>
    <div class="c1">${message}</div>
</div>
<%--${map1.size()}--%>
<%--${map2.size()}--%>
<f:forEach items="${map1}" var="item">
    ${item.key} : ${item.value}
</f:forEach><br>
<f:forEach items="${map2}" var="item">
    ${item.key} : ${item.value}
</f:forEach>

</body>
</html>
