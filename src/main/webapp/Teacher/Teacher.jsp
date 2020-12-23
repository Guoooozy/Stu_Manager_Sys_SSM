<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/23
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
当前用户为老师账户，您的基本信息如下：<br>
${persion}<br>
您可以进行的操作如下<br>
<a href="/File/showFile">下载文件</a><br>
<a href="/course/findCSorce">查看班级成绩</a>
</body>
</html>
