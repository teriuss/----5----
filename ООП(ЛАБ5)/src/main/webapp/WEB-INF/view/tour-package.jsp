<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<table>
    <tr>
        <th>tourist</th>
        <th>aviaTicketTourPackage_id</th>
        <th>tour_package_number</th>
    </tr>

    <c:forEach var="tourPackage" items="${alltourPackages}">

        <tr>
            <td>${tourPackage.tourist}</td>
            <td>${tourPackage.aviaTicketTourPackage_id}</td>
            <td>${tourPackage.tour_package_number}</td>
        </tr>

    </c:forEach>
</table>

</body>
</html>