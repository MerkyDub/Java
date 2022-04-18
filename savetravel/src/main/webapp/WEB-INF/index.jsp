
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
    <div id="container">
        <h1>Save Travels</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Expense</th>
                    <th scope="col">Vendor</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Actions</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="expense" items="${expenses}">
                    <tr>
                        <td><c:out value="${expense.id}"></c:out></td>
                        <td><a href="/expenses/show/${expense.id}"><c:out value="${expense.name}"></c:out></a></td>
                        <td><c:out value="${expense.vendor}"></c:out></td>
                        <td><c:out value="${expense.amount}"></c:out></td>
                        <td><a href="expenses/edit/${expense.id}">edit</a></td>
                        <td><form action="/books/${book.id}" method="post">
                            <input type="hidden" name="_method" value="delete">
                            <input type="submit" value="Delete">
                        </form></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="addExpense">
            <h2>Add an expense </h2>
            <form:form action="expenses" method="post" modelAttribute="expenses">
                <!-- when using form:form, always use path="" -->
                <form:label path="name">Expense Name:</form:label>
                <form:errors path="name"></form:errors>
                <form:input path="name"></form:input>
                <form:label path="vendor">Vendor:</form:label>
                <form:errors path="vendor"></form:errors>
                <form:input path="vendor"></form:input>
                <form:label path="amount">Amount:</form:label>
                <form:errors path="amount"></form:errors>
                <form:input path="amount"></form:input>
                <form:label path="description">Description</form:label>
                <form:errors path="description"></form:errors>
                <form:input path="description"></form:input>
                <input type="submit" value="submit">
            </form:form>
        </div>
    </div>
</body>
</html>