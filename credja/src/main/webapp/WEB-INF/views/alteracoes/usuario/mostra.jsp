<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Alterar Usuario - ${usuario.nome}</h3>
  
  <form action="altera">

    <input type="hidden" name="id" value="${usuario.id}" />
  
    	Nome:
		<input type="text" name="nome" value="${usuario.nome}" /> <br /><br />
		
		Cpf:
		<input type="text" name="cpf" value="${usuario.cpf}"/> <br /><br />
		
		E-mail:
		<input type="text" name="email" value="${usuario.email}" /> <br /><br />
		
		Telefone:
		<input type="text" name="telefone" value="${usuario.telefone}"/> <br /><br />
		
		Login:
		<input type="text" name="login" value="${usuario.login}" /> <br /><br />
		
		Senha:
		<input type="password" name="senha" /> <br /><br />
		
		
    <input type="submit" value="Alterar"/>
  </form>

</body>
</html>