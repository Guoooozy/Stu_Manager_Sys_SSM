<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/23
  Time: 11:18
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
当前用户是管理员账户，您的基本信息如下：<br>
${persion}<br>
你可以进行一下操作：<br>
<a href="/student/findAll">查询所有人员信息</a><br>
<a href="/Admin/AddStudent.jsp">添加学生或老师</a><br>
</body>
</html>
