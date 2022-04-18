
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Edit Expense</h1>
    <form:form action="/expenses/edit" method="post" modelAttribute="expenses">
        <!-- form:form can only be a post method -->
        <input type="hidden" name="_method" value="put">
        <form:label path="expenseName">Expense Name:</form:label>
        <form:errors path="expenseName"></form:errors>
        <form:input path="expenseName"></form:input>
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
</body>
</html>
