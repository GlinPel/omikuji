<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-5" style="max-width: 30vw;">
		<h1>Here's your Omikuji!</h1>
		<div class="card text-dark bg-light mt-3 mb-5">
		  <div class="card-body">
		    <p class="card-text fs-4">In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, <c:out value="${hobby}"/> for a for a living. The next time you see a <c:out value="${living}"/>, you will have good luck. Also, <c:out value="${saytext}"/></p>
		  </div>
		</div>
		<a href="/omikuji" class="btn btn-secondary">Go back</a>
	</div>
</body>
</html>