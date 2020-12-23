<%--
  Created by IntelliJ IDEA.
  User: 25875
  Date: 2020/12/22
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/File/upload" method="post" enctype="multipart/form-data">
    <input type="file" name="img"/><br>
    <input type="submit" value="上传作业"/><br>
</form>
<img src="${path}">
</body>
</html>