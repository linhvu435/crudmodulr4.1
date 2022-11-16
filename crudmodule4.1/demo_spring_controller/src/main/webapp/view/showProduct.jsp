<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/10/2022
  Time: 8:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">


    <a type="button"class="btn btn-success" href="create">Create</a>
    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>IMG</th>
            <th>PRICE</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td><img src="${p.img}" width="250" height="200" ></td>
                <td>${p.price}</td>
                <td><a type="button" class="btn btn-warning" href="/edit/${p.id}">Edit</a> </td>
                <td><a type="button" class="btn btn-danger" href="/delete/${p.id}">Delete</a> </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
