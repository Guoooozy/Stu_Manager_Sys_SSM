<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/23
  Time: 19:49
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
以下是您班级里学生提交的作业：<br>
<c:forEach items="${list}" var="item">
    <a href="/File/download/${item.toString()}">${item.toString()}</a><br>
    <a href="/check/ccc/${item.toString()}">查重该文章</a><br>
</c:forEach>

</body>
</html>
