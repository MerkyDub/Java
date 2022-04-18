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
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
    <h1>New Ninja</h1>
    <form:form action="ninjas/new" method="post" modelAttribute="ninja">
            
        <form:select path="dojo">
            <c:forEach var="dojo" items="${dojos}">
                <form:errors path="dojo"/>
                    <form:option value="${dojo.id}"><c:out value="${dojo.name}"/></form:option>
            </c:forEach>
        </form:select>
        <br>
        <label for="firstName"> First Name:</label>
        <div>
            <form:errors path="firstName"/>
            <form:input path="firstName"/>
        </div>
        <label for="firstName"> Last Name:</label>
        <div>
            <form:errors path="lastName"/>
            <form:input path="lastName"/>
        </div>
        <label for="firstName"> Age:</label>
        <div>
            <form:errors path="age"/>
            <form:input path="age"/>
        </div>
        <input type="submit" value="Create"/>
    </form:form>
</body>
</html>