<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
	<body>
	
		<h3>Lista de Usuarios</h3>
	
		<a href="/usuario">Criar novo Usuario</a>
			
		<table>
		  	<tr>
		    	<th>Nome</th>
		    	<th>Cpf</th>
		    	<th>email</th>
		    	<th>telefone</th>
		    	<th>login</th>
		    	<th>Perfil</th>
		  	</tr>
		  	<c:forEach items="${usuarios}" var="usuario">
		    	<tr>
		      		<td>${usuario.nome}</td>
		      		<td>${usuario.cpf}</td>
		      		<td>${usuario.email}</td>
		      		<td>${usuario.telefone}</td>
		      		<td>${usuario.login}</td>
		      		<td>${usuario.perfil.descricao}</td>
		      		<td><a href="mostra?id=${usuario.id}">Alterar</a></td>
		      		<td><a href="remove?id=${usuario.id}">Remover</a></td>
		    	</tr>
			 </c:forEach>
	  	</table>
	</body>
</html>