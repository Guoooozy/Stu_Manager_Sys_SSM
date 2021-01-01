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
<thead>
<tr class="active">
    <th>id</th>
    <th>名字</th>
    <th>性别</th>
    <th>学校</th>
    <th>班级</th>
    <th>电话</th>
</tr>
</thead>
<br>
<tbody>
<tr class="success">
    <td>${persion.id}</td>
    <td>${persion.name}</td>
    <td>${persion.sex}</td>
    <td>${persion.school}</td>
    <td>${persion.classs}</td>
    <td>${persion.phone}</td>
</tr>
</tbody>
<br>
您可以进行的操作如下<br>
<a href="/Admin/AddStudent.jsp">添加人员信息</a><br>
<a href="/Admin/showStu.jsp">查看人员</a>
</body>
</html>
