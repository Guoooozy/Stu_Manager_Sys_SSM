<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./resources/css/app.css">
    <link rel="stylesheet" href="./resources/bootstrap/css/bootstrap.min.css">
    <title>注册页面</title>
</head>

<body style="background: #94221b; background-image: url(images/bg_intro.png);">

    <div class="top-content">
        <div class="inner-bg">
            <div class="container">
                <div style="margin-bottom: 50px; background-color: #EBEBEB;"></div>
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <div class="intro-message" style="padding-left: 15%;color: white;">
                            <h1 style="padding-left: 10%;"><strong>RPCCloudSim注册页面</strong></h1>
                            <div style="margin-bottom: 30px; background-color: #EBEBEB;"></div>
                            <div class="description">
                                <p> 欢迎进入RPCCloudSim注册页面，输入格式正确的用户名和密码后，点击注册按钮即可注册。
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="margin-bottom: 30px; background-color: #EBEBEB;"></div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>注 册</h3>
                                <p>请 输 入 用 户 名 和 密 码：</p>
                            </div>
                            <div class="form-top-right">

                            </div>
                        </div>
                        <div class="form-bottom">
                            <form action="">
                                <div class="form-group"><label class="sr-only">Username</label>
                                    <input id="signinName" type="text" name="user[name]" placeholder="用户名..." class="form-control"></div>
                                <div class="form-group"><label class="sr-only">Password</label>
                                    <input id="signinPassword" type="password" name="user[password]" placeholder="密码..." class="form-username form-control"></div>
                                <div class="form-group" style="font-size: 20px;"><button type="button" class="btn btn-block">注册</button></div>
                                <div style="margin-bottom: 30px; background-color: #EBEBEB;"></div>
                                <h4>
                                    <a href="indexstudent.jsp" style="color: #888 ;  text-decoration:none; ">回到主页面</a>
                                    <i class="fa"><img src="images/icon_home.png" alt="" style="width: 18px;margin-bottom:2px;"></i>
                                </h4>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

</html>