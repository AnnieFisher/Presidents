<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>Presidents</title>
</head>
<body>
	<c:choose>

		<c:when test="${term >= 1 && term <= 44 }">
			<div id="pres">
				<h1>Presidents of the United States of America</h1>
				<img src="presPics/${term}.jpg" />
				<p id="name">${presidents.get(term-1).firstName}
					${presidents.get(term-1).lastName}</p>
			</div>
			<div id="list">
				<ul>
					<li><p>Served as President:
							${presidents.get(term-1).startTerm}-${presidents.get(term-1).endTerm}</p></li>
					<li><p>Affiliated Party: ${presidents.get(term-1).party}</p></li>
					<li><p>Presidential Fun Fact:
							${presidents.get(term-1).fact}</p></li>
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<p>Choose a presidential term:</p>
		</c:otherwise>
	</c:choose>
	<form action="Presidents" method="POST">
		<input type="submit" name="submit" value="back" /> <input
			type="submit" name="submit" value="next" /><br /> Term: <input
			type="text" name="term" size="3" /> <input type="submit"
			name="submit" value="submit" />
	</form>
</body>
</html>