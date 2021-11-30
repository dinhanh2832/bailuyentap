<%--
  Created by IntelliJ IDEA.
  User: anh
  Date: 30/11/2021
  Time: 3:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách học sinh</title>
    <style>
        table tr td{
            border: black solid 1px;
        }
        table{
            border-collapse:collapse;
        }
        table tr:nth-child(1){
            background-color:skyblue;
        }
    </style>
</head>
<body>
<h1> Danh sách học sinh</h1>
<a href="/students?action=create"> Thêm học sinh</a>
<br>
<table>
    <tr>
        <td>Tên</td>
        <td>Điểm toán</td>
        <td>Điểm lý</td>
        <td>Điểm hóa</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
<c:forEach items='${student}' var="st">
        <tr>
            <td><a href="/students?action=view&id=${st.getId()}">${st.getName()}</a></td>
            <td>${st.getScoreMath()}</td>
            <td>${st.getScorePhysics()}</td>
            <td>${st.getScoreChemistry()}</td>
            <td><a href="/students?action=delete&id=${st.getId()}">Xóa</a></td>
            <td><a href="/students?action=edit&id=${st.getId()}">Sửa</a></td>
        </tr>
</c:forEach>
</table>
</body>
</html>
