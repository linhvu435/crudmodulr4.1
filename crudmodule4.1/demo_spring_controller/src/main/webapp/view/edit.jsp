
<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 12/01/2022
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form method="post" >

  <input name="id" value="${product.id}">
  <br>
  <input name="name" value="${product.name}">
  <br>
  <input name="img" value="${product.img}">
  <br>
  <input name="price" value="${product.price}">

  <button type="submit">Submit</button>
</form>
</body>
</html>