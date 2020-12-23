<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/22
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<body>
<c:forEach items="${list}" var="item">
    ${item.toString()}<br>
</c:forEach>
</body>
</html>
