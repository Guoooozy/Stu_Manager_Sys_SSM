
<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/22
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${CSourse}" var="item">
    ${item.toString()}<br>
</c:forEach>
</body>
</html>
