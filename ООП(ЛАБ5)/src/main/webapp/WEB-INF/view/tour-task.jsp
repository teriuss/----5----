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

<h2>Составление задание</h2>

<form:form action="saveTourTask" modelAttribute="newTourTask">
    Description <form:input path="description"/>
    <form:errors path="description"/>
    <br><br>
    status <form:input path="status"/>
    <form:errors path="status"/>
    <br><br>
    executionTime <form:input path="executionTime"/>
    <form:errors path="executionTime"/>
    <br><br>
    tour_id <form:input path="tour_id"/>
    <form:errors path="tour_id"/>
    <br><br>
    employee_id <form:input path="employee_id"/>
    <form:errors path="employee_id"/>
    <br><br>

    <input type="submit" value="Add">
</form:form>

</body>
</html>