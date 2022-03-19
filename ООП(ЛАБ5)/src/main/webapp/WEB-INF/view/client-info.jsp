<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<h2>Client info</h2>
<br>

<form:form action="saveClient" modelAttribute="newClient">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Address <form:input path="address"/>
    <form:errors path="address"/>
    <br><br>
    Client number <form:input path="client_number"/>
    <form:errors path="client_number"/>
    <br><br>
    Telephone <form:input path="tel_number"/>
    <form:errors path="tel_number"/>
    <br><br>
    <input type="submit" value="OK">


</form:form>

</body>
</html>