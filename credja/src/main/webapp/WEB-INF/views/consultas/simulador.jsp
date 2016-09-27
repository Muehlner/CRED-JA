<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>CREDJÁ</title>
	</head>
	<body>
		<h2>SIMULADOR</h2>
	
		 
		<label>Orgão:</label>
		<form:select path="orgaos">
			<form:option value="Selecione" label="Selecione..." /> 
			<form:options items="${orgaos}"/>
		</form:select>
		
		<label>Banco:</label>
		<form:select path="bancos">
			<form:option value="Selecione" label="Selecione..." /> 
			<form:options items="${bancos}"/>
		</form:select>
		
		<tag:campoData id="dataLiberacao" />
		
	</body>
</html>