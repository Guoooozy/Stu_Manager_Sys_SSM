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
                            学生端查重系统
                        </span>
                    </span>
                </div>
                <div id="zuo-list">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="iconfont icon-shouye"></i>
                            <span class="zuo-title">学生信息</span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"> 成绩展示</span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"><a href="Student/FileUp.jsp"> 文件查重</a></span></li>
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
                            <td class="active">3</td>
                            <td class="active">4</td>
                        </tr>
                        <tr>
                            <td class="success">姓名</td>
                            <td class="success">李华</td>
                            <td class="success">张三</td>
                            <td class="success">李四</td>
                            <td class="success">王五</td>
                        </tr>
                        <tr>
                            <td class="warning">性别</td>
                            <td class="warning">男</td>
                            <td class="warning">女</td>
                            <td class="warning">男</td>
                            <td class="warning">女</td>
                        </tr>
                        <tr>
                            <td class="info">学校</td>
                            <td class="info">清华</td>
                            <td class="info">北大</td>
                            <td class="info">复旦</td>
                            <td class="info">上外</td>
                        </tr>
                        <tr>
                            <td class="danger">班级</td>
                            <td class="danger">Java1班</td>
                            <td class="danger">大数据1班</td>
                            <td class="danger">大数据2班</td>
                            <td class="danger">大数据3班</td>
                        </tr>
                        <tr>
                            <td class="info">电话</td>
                            <td class="info">1383xxxxxx</td>
                            <td class="info">1383xxxxxx</td>
                            <td class="info">1383xxxxxx</td>
                            <td class="info">1383xxxxxx</td>
                        </tr>
                        <tr>
                            <td class="active">选项</td>
                            <td class="active">删除</td>
                            <td class="active">删除</td>
                            <td class="active">删除</td>
                            <td class="active">删除</td>
                        </tr>
                    </table>
                    <div class="you-top col-sm-12">
                        <div class="col-sm-5 text-center">

                        </div>
                        <div class="col-sm-1 text-right">
                            <button type="button" class="btn btn-success">添加学生信息</button>
                        </div>


                    </div>
                </div>
                <!--                放图表-->
                <div class="you-center col-sm-12 hidden">
                    <table class="table table-hover">

                        <tr>
                            <td class="active">id</td>
                            <td class="active">1</td>
                            <td class="active">2</td>
                            <td class="active">3</td>
                            <td class="active">4</td>
                        </tr>
                        <tr>
                            <td class="success">数学</td>
                            <td class="success">98.9</td>
                            <td class="success">97.3</td>
                            <td class="success">96.5</td>
                            <td class="success">85.3</td>
                        </tr>
                        <tr>
                            <td class="warning">英语</td>
                            <td class="warning">77.3</td>
                            <td class="warning">78.3</td>
                            <td class="warning">79.5</td>
                            <td class="warning">80.0</td>
                        </tr>
                        <tr>
                            <td class="info">数据结构</td>
                            <td class="info">68.6</td>
                            <td class="info">67.3</td>
                            <td class="info">70.8</td>
                            <td class="info">79.6</td>
                        </tr>
                        <tr>
                            <td class="danger">计算机网络</td>
                            <td class="danger">76.5</td>
                            <td class="danger">74.3</td>
                            <td class="danger">68.9</td>
                            <td class="danger">90.5</td>
                        </tr>
                        <tr>
                            <td class="info">数据库</td>
                            <td class="info">67.3</td>
                            <td class="info">79.3</td>
                            <td class="info">76.3</td>
                            <td class="info">70.6</td>
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
                                <form>
                                    <div class="form-group" style="padding: 10px;">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile">
                                    </div>
                                    <div class="form-group" style="padding: 10px;">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile">
                                    </div>
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