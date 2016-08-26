<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Presidents</title>
</head>
<body>
	<form action="Presidents" method="POST">
	<!--<select name="Prez">
		<c:forEach var="president" items="${presidents}">
		<option value="${president.term}">${president.firstName} ${president.lastName} </option>
		</c:forEach>
	</select>  -->
	Term: <input type="text" name="term" size="3"/>
	</form>
</body>
</html>