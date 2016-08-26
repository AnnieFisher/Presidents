<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Presidents</title>
</head>
<body>
	<c:choose>
		<c:when test="${term >= 1 && term <= 44 }">
		<img src="presPics/${presidents.get(term-1).firstName}${presidents.get(term-1).lastName}.jpg"/>
		<p>${presidents.get(term-1).firstName} ${presidents.get(term-1).lastName}</p>
		</c:when>
		<c:otherwise>
		<p>Choose a presidential term:</p>
		</c:otherwise>
	</c:choose>
	<form action="Presidents" method="POST">
	Term: <input type="text" name="term" size="3"/>
	<input type="submit" name="number"/>
	</form>
</body>
</html>