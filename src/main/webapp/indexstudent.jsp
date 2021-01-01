<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <script src="./js/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="./js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/iconfont.css">
    <link rel="stylesheet" href="./css/index.css">
    <script src="./js/index.js"></script>
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
                            学生端查重系统
                        </span>
                    </span>
                </div>
                <div id="zuo-list">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="iconfont icon-shouye"></i>
                            <span class="zuo-title">学生信息</span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"><a href=""> 成绩展示</a>></span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"> 文件管理</span></li>
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
                <div class="you-center col-sm-12" border: 1px solid #0b93d5; margin-top: 50px; >
                    <table class="table table-hover">

                        <tr>
                            <td class="active">id</td>
                            <td class="active">${persion.id}</td>
                        </tr>
                        <tr>
                            <td class="success">姓名</td>
                            <td class="success">${persion.name}</td>
                        </tr>
                        <tr>
                            <td class="warning">性别</td>
                            <td class="warning">${persion.sex}</td>
                        </tr>
                        <tr>
                            <td class="info">学校</td>
                            <td class="info">${persion.school}</td>
                        </tr>
                        <tr>
                            <td class="danger">班级</td>
                            <td class="danger">${persion.classs}</td>
                        </tr>
                        <tr>
                            <td class="info">电话</td>
                            <td class="info">${persion.phone}</td>
                        </tr>
                    </table>
                    <div class="you-top col-sm-12">
                        <div class="col-sm-5 text-center">

                        </div>


                    </div>
                </div>
                <!--                放图表-->
                <div class="you-center col-sm-12 hidden">
                    <table class="table table-hover">

                        <tr>
                            <td class="active">id</td>
                            <td class="active">1</td>
                        </tr>
                        <tr>
                            <td class="success">数学</td>
                            <td class="success">98.9</td>
                        </tr>
                        <tr>
                            <td class="warning">英语</td>
                            <td class="warning">77.3</td>
                        </tr>
                        <tr>
                            <td class="info">数据结构</td>
                            <td class="info">68.6</td>
                        </tr>
                        <tr>
                            <td class="danger">计算机网络</td>
                            <td class="danger">76.5</td>
                        </tr>
                        <tr>
                            <td class="info">数据库</td>
                            <td class="info">67.3</td>
                        </tr>
                    </table>
                </div>
                <div class="you-center col-sm-12 hidden">

                    <div class="row">
                        <div class="col-sm-4">
                            <div style="margin-bottom: 70px; background-color: #EBEBEB; "></div>
                        </div>
                        <div class="col-sm-4">
                            <div>
                                <h3>文件在线查重</h3>
                                <p style="font-size: 8px;">提 交 文 件 后 会 出 现 本 文 章 2 0个 关键 词，以 及 在 文 章 中 出 现 的次 数:</p>

                            </div>
                            <div style=" background-color: #EBEBEB;border:1px solid #000;padding: 80px;">
                                <form action="/upload1?flag=0" method="post" enctype="multipart/form-data">
                                    <div class="form-group" style="padding: 10px;">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile">
                                    </div>
                                </form>
                                <form action="/upload1?flag=1" method="post" enctype="multipart/form-data">
                                    <div class="form-group" style="padding: 10px;">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile" enctype="multipart/form-data">
                                    </div>
                                </form>
                                <form>
                                    <div class="checkbox" style="padding-top: 40px;margin-left: 35px;">
                                        <label>
                                        <input type="checkbox"> Check me out
                                      </label>
                                    </div>
                                    <button type="submit" class="btn btn-default" style="margin-left: 60px;background-color:darkgrey;"> 查询</button>
                                </form>
                            </div>
                            <div style="padding-top: 20px;">

                            </div>
                            <div style="background-color: #EBEBEB;border:1px solid #000;">
                                <p style="font-size: 14px;"> 相 似 度(根据关键字进行相似度对比):</p>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
</body>

</html>