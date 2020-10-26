<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Succulent: </title>
</head>
<body>
	<a href="/">Home Page</a>
	<br>
	<form action="createSucculent.do">
	<%-- 	<input type="text" name="" hidden="true"
			value="${succulent.getId()}" />
		<br> --%>
		Common Name: <input
			type="text" name="commonName" placeholder="Common Name goes here" />
		<br>
		Scientific Name: <input
		type="text" name="scientificName" placeholder="Scientific Name goes here" />
		<br>
		Description: <input 
		type="text" name="description" placeholder="Description goes here" />
		<br>
		Price: <input
		type="text"  name="price" placeholder="Price goes here" />
		<br>
		Watering Needs: <input
		type="text" name="wateringNeeds" placeholder="Watering needs goes here" />
		<br> <input type="submit" value="Update" />
	</form>

</body>
</html>