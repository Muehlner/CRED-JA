<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroUsuario">
 
 	<security:authentication property="principal" var="user"/>
	
	<div id="page-wrapper">
		<div class="row">
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
		</div>
	</div>
	
	<!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    
</mgTags:template>