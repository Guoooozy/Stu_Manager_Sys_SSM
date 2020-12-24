<%--
  Created by IntelliJ IDEA.
  User: Guoooozy
  Date: 2020/12/24
  Time: 17:13
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
以下为所有查重报告，点击可下载：<br>
<c:forEach items="${list}" var="item">
    <a href="/File/Checkdownload/${item.toString()}">${item.toString()}</a><br>
</c:forEach>
</body>
</html>
