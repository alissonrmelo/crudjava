<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">	
		<meta charset="UTF-8">
		<title>Usuários cadastrados</title>
	</head>
	<body>	
		<%@ page import="com.crudjava.dao.UsuarioDAO, com.crudjava.bean.*, java.util.*" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%		
			List<Usuario> list = UsuarioDAO.getUsuarios();
			request.setAttribute("list", list);
		%>
		<div class="container">	
			<jsp:include page="navbar.html"></jsp:include>	      
			<div class="row">
				<div class="col-xs-12 col-sm-12">
					<h1>Usuários Cadastrados</h1>
					<table class="table table-striped">
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th>Sexo</th>
							<th>Data de nascimento:</th>
							<th>Cargo</th>
							<th>Lotação</th>
							<th>E-mail</th>
							<th>Telefone</th>
							<th>#</th>
							<th>#</th>							
						</tr>
						<c:forEach items="${list}" var="usuario">
							<tr>
								<td>${usuario.getId()}</td>
								<td>${usuario.getNome()}</td>
								<td>${usuario.getSexo()}</td>
								<td>${usuario.getDtNascimento()}</td>
								<td>${usuario.getCargo()}</td>
								<td>${usuario.getLotacao()}</td>
								<td>${usuario.getEmail()}</td>
								<td>${usuario.getTelefone()}</td>
								<td><a href="editUsuario.jsp?id=${usuario.getId()}" class="btn btn-primary" role="button">Editar</a></td>
								<td><a href="deleteUsuario.jsp?id=${usuario.getId()}" class="btn btn-primary" role="button">Excluir</a></td>								
							</tr>
						</c:forEach>
					</table>
				</div>		
			</div>
			<jsp:include page="footer.html"></jsp:include>	      
		</div>
	</body>
</html>