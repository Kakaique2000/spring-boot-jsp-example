<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
		<title>Insert title here</title>
	</head>
	<body>
	
		<!-- Inclui o componente do Header passando o parâmetro de título meus dogs -->
		<jsp:include flush="true" page="/WEB-INF/jsp/components/navbar.jsp">
			<jsp:param value="meus dogs" name="title" />
		</jsp:include>
	
	
		<!-- c:forEach => para cada cachorro, gera um p com o nome e a raça -->
		<c:forEach var="cachorro" items="${cachorros}">
			<p class="text-primary">${cachorro.getNome()}- raça: ${cachorro.getRaca()}</p>
		</c:forEach>
	
		<!-- Scripts do JQuery e do Bootstrap, precisam ficar no final do body para não atrapalhar a renderização do conteúdo -->
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</body>
</html>