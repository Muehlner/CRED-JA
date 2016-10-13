<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroUsuario">

		<h3>Cadastro de Usuario</h3>
	
		<form action="usuario/cadastra" method="post">
			
			Nome:
			<input type="text" name="nome" /> <br /><br />
			
			Cpf:
			<input type="text" name="cpf" /> <br /><br />
			
			E-mail:
			<input type="text" name="email" /> <br /><br />
			
			Telefone:
			<input type="text" name="telefone" /> <br /><br />
			
			Login:
			<input type="text" name="login" /> <br /><br />
			
			Senha:
			<input type="password" name="senha" /> <br /><br />
			
			
			Perfil:
			<form:select path="perfis" name="perfilUser">
				<form:option value="Selecione" label="Selecione..." />
				<form:options items="${perfis}" itemValue="descricao" itemLabel="descricao" />
			</form:select>
			
			<input type="submit" value="Cadastrar" />
				
		</form>
		
</mgTags:template>