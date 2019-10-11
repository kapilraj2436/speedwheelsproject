<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Speed Wheels - Spot the Difference</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">
</head>
<body>

	<div class="fullHeight">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="row fullHeight">
			<div class="column1">
				<h2>Two Wheelers</h2>
				<ul>
					<c:forEach var="connection" items="${twowheelconnections}">
						<li><a href="/speedwheels/connection?connectionName=${connection}" >${connection}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="column1">
				<h2>Four Wheelers</h2>
				<ul>
					<c:forEach var="connection" items="${fourwheelconnections}">
						<li><a href="/speedwheels/connection?connectionName=${connection}">${connection}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>