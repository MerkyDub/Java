
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
	<h1>Expense Details</h1>
	<label for="">Expense Name:</label>
	<p><c:out value="${expenses.name}"></c:out></p>
	<label for="">Expense Description:</label>
	<p><c:out value="${expenses.description}"></c:out></p>
	<label for="">Vendor:</label>
	<p><c:out value="${expenses.vendor}"></c:out></p>
	<label for="">Amount Spent:</label>
	<p><c:out value="${expenses.amount}"></c:out></p>
</body>
</html>
