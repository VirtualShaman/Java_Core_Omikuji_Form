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
		<h2>In 
			<c:out value="${ num }"></c:out> years, you will live in 
			<c:out value="${ city }"></c:out> with 
			<c:out value="${ name }"></c:out> as your room mate, 
			<c:out value="${ skill }"></c:out> for a living. The next time you see a 
			<c:out value="${ thing }"></c:out>, you will have good luck. Also, 
			<c:out value="${ nice }"></c:out>
		</h2>
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