<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
	
		<h3>Lista de Orgãos</h3>
	
		<a href="orgao">Criar novo Orgão</a>
			
		<table>
		  	<tr>
		    	<th>Id</th>
		    	<th>Descrição</th>
		  	</tr>
		  	<c:forEach items="${orgaos}" var="orgao">
		    	<tr>
		      		<td>${orgao.id}</td>
		      		<td>${orgao.descricao}</td>
		      		<td><a href="mostraOrgao?id=${orgao.id}">Alterar</a></td>
		      		<td><a href="removeOrgao?id=${orgao.id}">Remover</a></td>
		    	</tr>
			 </c:forEach>
	  	</table>
	</body>
</html>