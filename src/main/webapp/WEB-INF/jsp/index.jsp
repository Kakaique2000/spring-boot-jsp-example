<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>

	<jsp:include flush="true" page="/WEB-INF/jsp/components/navbar.jsp">
		<jsp:param value="principal" name="title" />
	</jsp:include>

	<h1>Olá ${nome}</h1>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>