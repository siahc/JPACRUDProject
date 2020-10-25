<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Succulent</title>
</head>
<body>

<h1>Welcome to the Succulent Atrium</h1>
<h3>Search by SucculentId</h3>
	<form action="getSucculent.do" method="GET">
		Succulent ID: <input type="text" name="sid" /> <input type="submit"
			value="Show Succulent" />
	</form>
	
	<table class="table table-striped table-hover">
		<thead class="thead thead-dark">
		  <tr>
			<th>Succulent ID</th>
			<th>Common Name</th>
		  </tr>
		</thead>
		<tbody>
			<c:forEach items="${succulents}" var="succulent">
				<tr>
					<td>${succulent.id}</td>
					<td><a href="getSucculent.do?sid=${succulent.id}">${succulent.commonName}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>