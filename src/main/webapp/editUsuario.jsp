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
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDAO.getUsuario(Integer.parseInt(id));
	%>
	<div class="container">
		<jsp:include page="navbar.html"></jsp:include>
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<h1>Editar Usuário</h1>		
				<form class="row" action="updateUsuario.jsp" method="post" style="margin-bottom: 10px;">
					<div class="form-group col-xs-12 col-sm-8">
					  <label for="nome">Nome</label>
					  <input type="text" value="<%=usuario.getNome()%>" class="form-control" name="nome" id="nome" placeholder="Nome">
					</div>
					<div class="form-group col-xs-12 col-sm-2">
					  <label for="sexo">Sexo</label>
					  <select name="sexo" id="sexo" class="form-control">
					  	<option value="Masculino" <% if((usuario.getSexo())=="Masculino") { %> selected <% } %>>Masculino</option>
					  	<option value="Feminino" <% if((usuario.getSexo())=="Feminino") { %> selected <% } %>>Feminino</option>		    	
					  </select>
					</div>
					<div class="form-group col-xs-12 col-sm-2">
					  <label for="dtNascimento">Data de Nascimento</label>
					  <input type="text" value="<%=usuario.getDtNascimento()%>" class="form-control" name="dtNascimento" id="dtNascimento" placeholder="Data de Nascimento">
					</div>
					<div class="form-group col-xs-12 col-sm-4">
					  <label for="cargo">Cargo</label>
					  <select name="cargo" id="cargo" class="form-control">
					  	<option value="<%= usuario.getCargo() %>"><%= usuario.getCargo() %></option>		    
					  	<option value="Desenvolverdor Junor" <% if((usuario.getCargo())=="Desenvolverdor Junor") { %> selected <% } %>>Desenvolvedor Junior</option>
					  	<option value="Desenvolvedor Pleno" <% if((usuario.getCargo())=="Desenvolvedor Pleno") { %> selected <% } %>>Desenvolvedor Pleno</option>		    	
					  	<option value="Desenvolvedor Senior" <% if((usuario.getCargo())=="Desenvolvedor Senior") { %> selected <% } %>>Desenvolvedor Senior</option>		    	
					  	<option value="Desenvolvedor Master" <% if((usuario.getCargo())=="Desenvolvedor Master") { %> selected <% } %>>Desenvolvedor Master</option>		    	
					  </select>
					</div>
					<div class="form-group col-xs-12 col-sm-4">
					  <label for="lotacao">Lotação</label>
					  <input type="text" value="<%= usuario.getLotacao() %>" class="form-control" name="lotacao" id="lotacao" placeholder="Lotação">
					</div>
					<div class="form-group col-xs-12 col-sm-4">
					  <label for="email">E-mail</label>
					  <input type="email" value="<%=usuario.getEmail()%>" class="form-control" name="email" id="email" placeholder="E-mail">
					</div>		  
					<div class="form-group col-xs-12 col-sm-4">
					  <label for="telefone">Nº Telefone</label>
					  <input type="text" value="<%=usuario.getEmail()%>" class="form-control" name="telefone" id="telefone" placeholder="Nº Telefone">
					</div>		  		  
					<div class="col-xs-12 col-sm-12">		  
					  <button type="submit" class="btn btn-primary">Editar</button>
					</div>
				</form>
			</div>
		</div>
		<jsp:include page="footer.html"></jsp:include>
	</div>

</body>
</html>