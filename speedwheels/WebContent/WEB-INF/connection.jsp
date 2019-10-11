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
				<h2>Cruiser Bikes</h2>
				<ul>
					<c:forEach var="data" items="${connectionData}">
						<li>${data}</li>
					</c:forEach>
					<div class="column1">
						<img class="imgDesc" src="${connectionImagePath}"
							alt="brand image placeholder" />
					</div>
				</ul>
				<div class="options">
					<a class="green" href="savedConnections.jsp">Yes</a> <a class="red"
						href="savedConnections.jsp">No</a> <a class="yellow"
						href="savedConnections.jsp">Maybe</a>
				</div>
			</div>

		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>