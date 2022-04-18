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
	<div id="container">
		<div id="heading">
			<h1>Send an Omikuji!</h1>
		</div>
		<form action="show" method="POST">
			<!-- make sure form is written -->
			<label for="numbers"> Pick any number from 5 to 25</label>
			<div id="pickNumber">
				<!-- this is where the form loop begins -->
				<select name="selectingNumbers" id="dropdown">
					<option value="0"></option>
					<option value="5">5</option>
					<option value="10">10</option>
					<option value="15">15</option>
					<option value="20">20</option>
					<option value="25">25</option>
				</select>
				<!-- this is where the forloop ends -->
			</div>
			<label for="city">Enter the name of any city</label>
			<div id="cityName">
				<input type="text" name="city">
			</div>
			<label for="name">Enter the name of any real person</label>
			<div id="name">
				<input type="text" name="name">
			</div>
			<label for="job">Enter professional endeavor or hobby</label>
			<div id="occupation">
				<input type="text" name="job">
			</div>
			<label for="livingThing">Enter any type of living thing</label>
			<div id="livingThing">
				<input type="text" name="thing">
			</div>
			<label for="somethingNice">Say something nice to someone</label>
			<div id="comment">
				<textarea name="something" id="comment" cols="30" rows="10"></textarea>
			</div>
			<label for="send">Send and show a friend</label>
			<input type="submit" value="send">
		</form>
	</div>
</body>
</html>