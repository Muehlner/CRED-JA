<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table id="tabela">
	<tr>
		<th>Descriçãoo</th>
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