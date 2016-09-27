<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>CREDJÁ</title>
	</head>

	<body>
		<h3>Cadastro de Cliente</h3>
	
		<form action="/cliente/cadastro" method="post">
			
			<label for="nome">Nome:</label> 
			<input type="text" id="nome" name="nome" />
			
			<label for="cpf">CPF:</label> 
			<input type="text" id="cpf" name="cpf" />
			
			<label for="telefone">Telefone:</label> 
			<input type="text" id="telefone" name="telefone" />
			
			<label for="email">E-mail:</label> 
			<input type="text" id="email" name="email" />
			
			<label for="numeroMatricula">Nº Matricula:</label> 
			<input type="text" id="numeroMatricula" name="numeroMatricula" />
			
			<label for="observacao">Observação:</label> 
			<textarea rows="5" cols="100" id="observacao" name="observacoes.descricao" ></textarea>
			<input type="submit" value="Adicionar Observação" />
			
			Atendimentos:
			
			
			
			<input type="submit" value="Cadastrar" />
				
		</form>
	</body>
</html>