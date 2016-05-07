<%--
  Created by IntelliJ IDEA.
  User: m7md
  Date: 3/26/16
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Frist App</title>
</head>
<body>
<form:errors path="ma.*"/>


<form action="/welcome" method="post">

    <input type="text" name="name">
    <input type="text" name="age">
    <input type="submit">


    ${list.get(0).name}

</form>
</body>
</html>
