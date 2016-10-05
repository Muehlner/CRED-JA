<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.springframework.org/schema/mvc">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="/resources/js/jquery-3.1.1.js"></script>
	<link href="/resources/css/tabela.css" rel="stylesheet">
  	
  	<title>Insert title here</title>
</head>
<body>

	<h3>Lista de Tabelas</h3>

	<a href="/tabela">Criar nova Tabela</a> <br /><br />

	<form:select path="bancos" name="idBanco" class="selectBanco" >
		<form:option value="Selecione" label="Selecione..." />
		<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
	</form:select>

	<input type="button" value="Pesquisar" class="pesquisar" />
	
	<table id="tabela" class="isHidden">
	</table>

<body>

<script type="text/javascript">

	var idBanco;

	$('.selectBanco').on('change', function() {
		idBanco = $(this).val();
	});
	
	$('.pesquisar').on('click', function() {
		
		 $('#tabela').empty();
		
		 $.ajax({
             url: '/tabela/pesquisaTabelas?idBanco=' + idBanco,
             type: 'GET',
             dataType: 'json',
             cache: false,
             success: function (response) {
            	 
            	 $('#tabela').removeClass('isHidden');
            	 
            	 var trHTML = '';
            	  
            	 $.each(response, function(i, element){

            		 trHTML += '<tr>' +
            		 
            		 				'<td>' + element.descricao 									 + '</td>' + 
            		 			    '<td> <a href="mostra?id=' + element.id + '"> Alterar </a> ' + '</td>' +
            		 			    '<td> <a href="remove?id=' + element.id + '"> Remover </a> ' + '</td>' +
            		 			    		
            		 			'</tr>';

            	 });
            	 
            	 $('#tabela').append(trHTML);
         	}
		 });
		
	});
	

</script>

</html>