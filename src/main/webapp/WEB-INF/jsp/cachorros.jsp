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
	
		<!-- Inclui o componente do Header passando o par�metro de t�tulo meus dogs -->
		<jsp:include flush="true" page="/WEB-INF/jsp/components/navbar.jsp">
			<jsp:param value="meus dogs" name="title" />
		</jsp:include>
	
	
		<!-- c:forEach => para cada cachorro, gera um p com o nome e a ra�a -->
		<c:forEach var="cachorro" items="${cachorros}">
			<p class="text-primary">${cachorro.getNome()}- ra�a: ${cachorro.getRaca()}</p>
		</c:forEach>
	
		<!-- Scripts do JQuery e do Bootstrap, precisam ficar no final do body para n�o atrapalhar a renderiza��o do conte�do -->
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</body>
</html>