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
		<h1>Send a Omikuji!</h1>
		<form class="mt-3" action="/data" method="POST">
		  <div class="mb-3">
		  	<label for="cityid" class="form-label">Pick any number from 5 to 25</label>
			<select class="form-select" name="number">
			  	<c:forEach begin="5" step="1" end="25" var="variable">
			  		<option value="${variable}"><c:out value="${variable}"></c:out></option>
				</c:forEach>
			</select>
		  </div>
		  <div class="mb-3">
		    <label for="cityid" class="form-label">Enter the name of any city</label>
		    <input type="text" class="form-control" id="cityid" name="city">
		  </div>
		  <div class="mb-3">
		    <label for="realpersonid" class="form-label">Enter the name of any real person</label>
		    <input type="text" class="form-control" id="realpersonid" name="person">
		  </div>
		  <div class="mb-3">
		    <label for="hobbyid" class="form-label">Enter professional endeavor or hobby</label>
		    <input type="text" class="form-control" id="hobbyid" name="hobby">
		  </div>
		  <div class="mb-3">
		    <label for="livingthingid" class="form-label">Enter any type of living thing</label>
		    <input type="text" class="form-control" id="livingthingid" name="living">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Say something nice to someone</label>
		    <textarea class="form-control" id="floatingTextarea2" style="height: 100px" name="saytext"></textarea>
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Send and show a friend</label>
		    <div class="clearfix">
		    	<button type="submit" class="btn btn-primary float-end">Submit</button>
		    </div>
		  </div>
		  
		</form>
	</div>
</body>
</html>