<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update: ${succulent.getCommonName()}</title>
</head>
<body>
	<a href="/">Home Page</a>
	<br>
	<form action="updateSucculent.do">
		<input type="text" name="sid" hidden="true"
			value="${succulent.getId()}" />
		<br>
		Common Name: <input
			type="text" name="commonName" value="${succulent.getCommonName()}" />
		<br>
		Scientific Name: <input
		type="text" name="scientificName" value="${succulent.getScientificName()}" />
		<br>
		Description: <input 
		type="text" name="description" value="${succulent.getDescription()}" />
		<br>
		Price: $<input
		type="text"  name="price" value="${succulent.getPrice()}" />
		<br>
		Watering Needs: <input
		type="text" name="wateringNeeds" value="${succulent.getWateringNeeds()}" />
		<br> <input type="submit" value="Update" />
	</form>

</body>
</html>