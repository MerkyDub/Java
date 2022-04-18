<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Age</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="ninja" items="${dojo.ninjas}">
                <tr>
                    <td><c:out value="${ninja.id}"/></td>
                    <td><c:out value="${ninja.firstName}"/></td>
                    <td><c:out value="${ninja.lastName}"/></td>
                    <td><c:out value="${ninja.age}"/></td>
                </tr>
            </c:forEach> 
        </tbody>
    </table>
</body>
</html>