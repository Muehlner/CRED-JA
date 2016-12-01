<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>


<mgTags:template bodyName="cadastroUsuario">
	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Alteração de Usuario</h1>
	        </div>
        </div>
		  
		<div class="row"> 
		  <form action="../usuario/altera" method="post">
			
			<security:csrfInput/>
			
			<div class="col-lg-6">
			
					<input type="hidden" name="id" value="${usuario.id}">
			
					<div class="form-group">
						<label>Nome</label>
						<input class="form-control" name="nome" placeholder="Digite o nome completo" value="${usuario.nome}" />
					</div>
					
					
					<div class="form-group">
						<label>CPF</label>
						<input class="form-control" name="cpf" placeholder="999.999.999-99" value="${usuario.cpf}" />
					</div>
					
					<div class="form-group">
						<label>Email</label>
						<input class="form-control" name="email" placeholder="exemplo@teste.com.br" value="${usuario.email}" />
					</div>
					
					<div class="form-group">
						<label>Telefone</label>
						<input class="form-control" name="telefone" placeholder="(99) 99999-9999" value="${usuario.telefone}" />
					</div>
					
					<div class="form-group">
						<label>Login</label>
						<input class="form-control" name="login" placeholder="usuario" value="${usuario.login}" />
					</div>
					
					<div class="form-group">
						<label>Senha</label>
						<input class="form-control" name="senha" type="password" placeholder="password" required="required" />
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
			        	<button type="submit" class="btn btn-primary">Alterar</button>
			        </div>
				</div>
		  	</form>  	
		</div>
	</div>
</mgTags:template>