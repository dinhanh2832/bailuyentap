<%--
  Created by IntelliJ IDEA.
  User: anh
  Date: 30/11/2021
  Time: 3:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Sửa</h1>
<a href="/students"> Trở lại</a>
<span class="massage">${massage}</span>
<form method="post">
    <p><input type="text" name="name" value=" ${student.getName()}"></p>
    <p><input type="text" name="math" value="${student.getScoreMath()}"> </p>
    <p><input type="text" name="phy" value="${student.getScorePhysics()}"> </p>
    <p><input type="text" name="chem" value="${student.getScoreChemistry()}"> </p>
    <button> Sửa</button>
</form>
</body>
</html>
