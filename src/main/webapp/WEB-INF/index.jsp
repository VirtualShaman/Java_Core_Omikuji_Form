<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div id="bigdaddy">
		<h1>Send an Omikuji!</h1>
		<form action="/submit" method="POST">
			<p>Pick any number from 5 to 25</p>
			<input type="number" name="num">
			<p>Enter the name of any city.</p>
			<input type="text" name="city">
			<p>Enter the name of any real person</p>
			<input type="text" name="name">
			<p>Enter professional endeavor or hobby:</p>
			<input type="text" name="skill">
			<p>Enter any type of living thing.</p>
			<input type="text" name="thing">
			<p>Say something nice to someone:</p>
			<textarea rows="5" cols="30" name="nice"></textarea>
			<p>Send and show a friend</p>
			<input type="submit">
		</form>
	</div>
	<style>
		#bigdaddy {
			display: flex;
    		justify-content: center;
    		align-items: center;
    		flex-direction: column;
		}
	</style>
</body>
</html>