<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroUsuario">

	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Usuario</h1>
	        </div>
        </div>
        
		<div class="row">
		
			<form action="usuario/cadastra" method="post">
				
				<security:csrfInput/>
				
				<div class="col-lg-6">
					<div class="form-group">
						<label>Nome</label>
						<input class="form-control" name="nome" placeholder="Digite o nome completo" />
					</div>
					
					
					<div class="form-group">
						<label>CPF</label>
						<input class="form-control" name="cpf" placeholder="999.999.999-99"/>
					</div>
					
					<div class="form-group">
						<label>Email</label>
						<input class="form-control" name="email" placeholder="exemplo@teste.com.br"/>
					</div>
					
					<div class="form-group">
						<label>Telefone</label>
						<input class="form-control" name="telefone" placeholder="(99) 99999-9999"/>
					</div>
					
					<div class="form-group">
						<label>Login</label>
						<input class="form-control" name="login" placeholder="usuario"/>
					</div>
					
					<div class="form-group">
						<label>Senha</label>
						<input class="form-control" name="senha" type="password" placeholder="password"/>
					</div>
					<div class="form-group">
						<label>Perfil</label>
						<form:select path="perfis" name="perfilUser"  class="form-control">
							<form:option value="Selecione" label="Selecione..." />
							<form:options items="${perfis}" itemValue="descricao" itemLabel="descricao" />
						</form:select>
					</div>
					
					<div class="form-group">
						<button type="button" class="btn btn-default">Cancelar</button>
			        	<button type="submit" class="btn btn-primary">Salvar</button>
			        </div>
				</div>
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