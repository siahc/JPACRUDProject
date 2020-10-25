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
		<h2>Scientific Name: ${succulent.getScientificName()}</h2>

		<h2>Description: ${succulent.getDescription()}</h2>
		<h2>Price: ${succulent.formatPrice()}</h2>
		<h2>Watering Needs: ${succulent.getWateringNeeds()}</h2>
		<br> <input type="submit" value="Update" />
	</form>

</body>
</html>