<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Editar Usuário</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">		
</head>
<body>
	<%@ page import="com.crudjava.dao.UsuarioDAO, com.crudjava.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<div class="container">
		<jsp:include page="navbar.html"></jsp:include>
		<div class="row">
			<jsp:include page="cadastrarUsuarioForm.html"></jsp:include>
		</div>
		<jsp:include page="footer.html"></jsp:include>
	</div>

</body>
</html>