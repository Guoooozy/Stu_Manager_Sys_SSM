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
    <link href="./css/style.css" rel="stylesheet" type="text/css">
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
                            管理员端查重系统
                        </span>
                    </span>
                </div>
                <div id="zuo-list">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="iconfont icon-shouye"></i>
                            <span class="zuo-title">查询信息</span></li>
                        <li class="list-group-item"><i class="iconfont icon-tubiao"></i>
                            <span class="zuo-title"><a href="/student/addStudent">添加人员</a></span></li>
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
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="25" align="center" valign="bottom" class="td06">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%" valign="middle" background="./images/bg_03.gif">&nbsp;</td>
                                        <td width="2%" valign="middle" background="./images/bg_03.gif"><img src="./images/main_28.gif" width="9" height="9" align="absmiddle"></td>
                                        <td height="30" valign="middle" background="./images/bg_03.gif">
                                            <div align="left">
                                                <font color="#FFFFFF">查询信息</font>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <td width="79%" class="td_page style1">--普通查询--</td>
                    </table>
                    <form name="form1" method="post" action="">
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
                            <tr>
                                <td colspan="3" class="td_02">
                                    <SPAN class=td_title>查询选择</SPAN>
                                </td>
                                <td class="td_02">&nbsp;</td>
                            </tr>

                            <tr>
                                <td width="14%" align="center" class="td_02">查询对象</td>
                                <td width="34%" class="td_02"><select name="select" style="width:98.9% ">
                                    <option value="1" selected>--请选择--</option>
                                    <option value="2">老师</option>
                                    <option value="3">学生</option>
                                  </select>

                                    <td align="center" class="td_02"><input name="Submit" type="button" class="buttonface02" value="  查询  "></td>
                                    <td class="td_02">
                                        <!-- <input name="textfield3" type="text" class="input" 
                      
                      style="width:98.9% " > --></td>
                            </tr>

                        </table>
                        <br>
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="td_page">
                                    <div align="right">
                                        <input name="Submit" type="submit" class="buttonface02" value="  删 除  " onClick="queding()">
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
                            <tr>
                                <td colspan="8" align="right" class="td07"><img src="./images/1.gif" width="4" height="5" align="absmiddle"> 首页
                                    <img src="./images/2.gif" width="5" height="5" align="absmiddle"> 上一页
                                    <img src="./images/2-2.gif" width="5" height="5" align="absmiddle"> 下一页
                                    <img src="./images/3.gif" width="6" height="5" align="absmiddle"> 末页　</td>
                            </tr>

                            <td class="td07" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
                            <td class="td07">id</td>
                            <td class="td07">姓名</td>
                            <td class="td07">性别</td>
                            <td class="td07">学校</td>
                            <td class="td07">班级</td>
                            <td class="td07">电话</td>

                            <td class="td07">删除</td>

                            <td class="td07">修改</td>

                            </tr>
                                <c:forEach items="${list}" var="item">
                                    <td class="td07" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
                                    <td class="td07">${item.id}</td>
                                    <td class="td07">${item.name}</td>
                                    <td class="td07">${item.sex}</td>
                                    <td class="td07">${item.school}</td>
                                    <td class="td07">${item.classs}</td>
                                    <td class="td07">${item.phone}</td>
                                    <td class="td07"><a href="/student/delStudent/${item.id}">删除</a></td>
                                    <a href="">修改</a></td>
                                </c:forEach>
                            </tr>
                        </table>



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