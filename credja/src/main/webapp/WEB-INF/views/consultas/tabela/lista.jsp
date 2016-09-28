<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
	
		<h3>Lista de Tabelas</h3>
	
		<a href="/banco">Criar nova Tabela</a>
		
		<form:select path="bancos" name="idBanco">
			<form:option value="Selecione" label="Selecione..." />
			<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
		</form:select>
			
		<table>
		  	<tr>
		    	<th>Descrição</th>
		    	<th>Banco</th>
		  	</tr>
		  	<c:forEach items="${tabelas}" var="tabela">
		    	<tr>	
		      		<td>${tabela.descricao}</td>
		      		<td></td>
		      		<td><a href="mostra?id=${tabela.id}">Alterar</a></td>
		      		<td><a href="remove?id=${tabela.id}">Remover</a></td>
		    	</tr>
			 </c:forEach>
	  	</table>
	</body>
</html>