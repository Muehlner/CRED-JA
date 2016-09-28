<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="tabela/cadastra">

		<label>Banco:</label>
		<form:select path="bancos" name="idBanco">
			<form:option value="Selecione" label="Selecione..." />
			<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
		</form:select>

		Descrição da tabela:  <input type="text" name="descricao" /> 
		
		<input type="submit" value="Gravar" />

	</form>

</body>
</html>