<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/23
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/student/addStudent" method="post">
    <input type="text" name="id"/>
    <input type="text" name="name"/>
    <input type="text" name="sex"/>
    <input type="text" name="school"/>
    <input type="text" name="classs"/>
    <input type="text" name="phone"/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
