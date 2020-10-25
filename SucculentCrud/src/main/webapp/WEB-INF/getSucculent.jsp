<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${succulent.getCommonName()}</title>
</head>
<body>
	<a href="/">Home Page</a>

	<h2>Plant ID: ${succulent.getId()}</h2>
	<h1>Common Name: ${succulent.getCommonName()}</h1>
	<h2>Scientific Name: ${succulent.getScientificName()}</h2>
	<h2>Description: ${succulent.getDescription()}</h2>
	<h2>Price: ${succulent.formatPrice()}</h2>
	<h2>Watering Needs: ${succulent.getWateringNeeds()}</h2>
	
	<a href="updateSucculent.do?sid=${succulent.id}">Update ${succulent.commonName}</a>
	<a href="deleteSucculent.do?sid=${succulent.id}">Delete ${succulent.commonName}</a>

</body>
</html>