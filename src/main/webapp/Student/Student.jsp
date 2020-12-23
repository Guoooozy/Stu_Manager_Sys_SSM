<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/23
  Time: 11:21
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
当前用户为学生账户，您的基本信息如下：<br>
${persion}<br>
<a href="/Student/upfile.jsp">上传作业点我</a><br>
<a href="/course/PersonselectById?id=${persion.id}">查看个人成绩点我</a>
</body>
</html>
