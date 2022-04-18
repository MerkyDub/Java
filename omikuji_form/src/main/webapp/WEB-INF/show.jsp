<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show</title>
</head>
<body>
<h1>Here's Your Omikuji!</h1>
<p>In <c:out value="${number}"/> years, you will live in <c:out value="${city}" /> with <c:out value="${name}"/> as your rommate, <c:out value="${job}"/>for a living. The next time you see a <c:out value="${thing}"/>, you will have good luck. Also, <c:out value="${comment}"/> </p>
</body>
</html>
