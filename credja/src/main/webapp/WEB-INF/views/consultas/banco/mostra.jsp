<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Alterar Banco - ${banco.id}</h3>
  
  <form action="alteraBanco" method="post">

    <input type="hidden" name="id" value="${banco.id}" />
  
    Descri��o:
    
    <input type="text" name="descricao" value="${banco.descricao}" >
    <input type="submit" value="Alterar"/>
  </form>

</body>
</html>