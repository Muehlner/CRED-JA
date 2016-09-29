<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.springframework.org/schema/mvc">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="/webjars/jquery/dist/jquery.min.js"></script>
  	
  	<title>Insert title here</title>
</head>
<body>

	<h3>Lista de Tabelas</h3>

	<a href="/tabela">Criar nova Tabela</a> <br /><br />

	<form:select path="bancos" name="idBanco" id="selectBanco">
		<form:option value="Selecione" label="Selecione..." />
		<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
	</form:select>

	<input type="submit" value="Pesquisar" onClick="pesquisaTabelas()" />

</body>

<script type="text/javascript">
	function pesquisaTabelas() {
		$("#selectBanco").change(function() {
			var id = $(this).children(":selected").attr("id");
			alert(id);
		});

	}
</script>

</html>