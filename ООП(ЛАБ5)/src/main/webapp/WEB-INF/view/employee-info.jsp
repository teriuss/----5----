<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: youha
  Date: 15.03.2022
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form action="saveEmployee" modelAttribute="newEmployee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Address <form:input path="address"/>
    <form:errors path="address"/>
    <br><br>
    Client number <form:input path="passport_number"/>
    <form:errors path="passport_number"/>
    <br><br>
    Telephone <form:input path="position"/>
    <form:errors path="position"/>
    <br><br>
    <input type="submit" value="OK">


</form:form>

</body>
</html>
