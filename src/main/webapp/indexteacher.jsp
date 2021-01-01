<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <script src="./resources/js/jquery.min.js"></script>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <script src="./resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./resources/css/iconfont.css">
    <link rel="stylesheet" href="./resources/css/index.css">
    <script src="./resources/js/index.js"></script>
</head>

<body>
    <div class="container-fluid">

        <div class="row core">
            <!--            左侧导航栏-->
            <div class="col-sm-2 zuo-core">
                <div>
                    <span>
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    <span class="zuo-title">
                            老师端查重系统
                        </span>
                    </span>
                </div>
                <div id="zuo-list">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="iconfont icon-shouye"></i>
                            <span class="zuo-title">老师信息</span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"> 作业查重和下载</span></li>
                    </ul>
                </div>

            </div>
            <!--            右侧显示区域-->
            <div class="col-sm-10 you-core">
                <div class="you-top col-sm-12">
                    <div class="col-sm-1 text-center">
                        <i class="iconfont icon-shouqi" id="zuo-btn"></i>
                    </div>
                    <div class="col-sm-11 text-right">
                        <span class="glyphicon glyphicon-refresh" aria-hidden="true" id="refresh"></span>
                        <span>admin</span>
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </div>
                </div>
                <!--                放画布-->
                <div class="you-center col-sm-12" border: 1px solid #0b93d5; margin-top: 50px;>

                    <table class="table table-hover">

                        <tr>
                            <td class="active">id</td>
                            <td class="active">1</td>
                            <td class="active">2</td>

                        </tr>
                        <tr>
                            <td class="success">姓名</td>
                            <td class="success">李华</td>
                            <td class="success">张三</td>

                        </tr>
                        <tr>
                            <td class="warning">性别</td>
                            <td class="warning">男</td>
                            <td class="warning">女</td>

                        </tr>
                        <tr>
                            <td class="info">学校</td>
                            <td class="info">清华</td>
                            <td class="info">北大</td>

                        </tr>
                        <tr>
                            <td class="danger">班级</td>
                            <td class="danger">Java1班</td>
                            <td class="danger">大数据1班</td>

                        </tr>
                        <tr>
                            <td class="info">电话</td>
                            <td class="info">1383xxxxxx</td>
                            <td class="info">1383xxxxxx</td>

                        </tr>
                        <tr>
                            <td class="active">选项</td>
                            <td class="active">删除</td>
                            <td class="active">删除</td>

                        </tr>
                    </table>
                    <div class="you-top col-sm-12">
                        <div class="col-sm-5 text-center">

                        </div>
                        <div class="col-sm-1 text-right">
                            <button type="button" class="btn btn-success">添加老师信息</button>
                        </div>


                    </div>
                </div>
                <div class="you-center col-sm-12 hidden">
                    <div style="margin-bottom: 60px; background-color: #EBEBEB; "></div>
                    <div class="row">
                        <table class="table table-striped">
                            <tr>
                                <td>
                                    <td>id</td>
                                    <td>学生姓名</td>
                                    <td>下载作业</td>
                                    <td>点击查重</td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <td>1</td>
                                    <td>学生姓名</td>
                                    <td>下载</td>
                                    <td>查重</td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <td>2</td>
                                    <td>学生姓名</td>
                                    <td>下载</td>
                                    <td>查重</td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <td>3</td>
                                    <td>学生姓名</td>
                                    <td>下载</td>
                                    <td>查重</td>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
</body>

</html>