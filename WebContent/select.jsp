<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Presidents</title>
</head>
<body>
	<form action="Presidents" method="GET">
	<select name="Prez's">
		<c:forEach var="president" items="${presidents}">
		<option value="${president.firstName}">${president.firstName} </option>
		</c:forEach>
	</select>
	</form>
</body>
</html>