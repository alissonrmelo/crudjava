<%@ page import="com.crudjava.dao.UsuarioDAO" %>
<jsp:useBean id="u" class="com.crudjava.bean.Usuario"></jsp:useBean>	
<jsp:setProperty property="*" name="u" />

<%
	int i = UsuarioDAO.insertUsuario(u);
	response.sendRedirect("usuariosCadastrados.jsp");
%>