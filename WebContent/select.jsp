<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

				<form id="form" action="Presidents" method="POST">
					Term: <input type="text" name="term" size="3" /> <input type="submit"
					name="submit" value="submit" /><br/><br/>
					<input class="button" type="submit" name="submit" value="Back" />
					<input class="button" type="submit" name="submit" value="Next" /><br />

				</form>
			</div>
			<div id="list">
				<ul>
					<li><p>Served as President: ${presidents.get(term-1).startTerm}-${presidents.get(term-1).endTerm}</p></li>
					<li><p>Affiliated Party: ${presidents.get(term-1).party}</p></li>
					<li><p>Presidential Fun Fact: ${presidents.get(term-1).fact}</p></li>
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<form id="invalid" action="Presidents" method="POST">
				Please enter the term number the president served.<br/>
				Term: <input type="text" name="term" size="3" /> <input type="submit"
				name="submit" value="submit" />
			</form>
		</c:otherwise>
	</c:choose>
	
</body>
</html>