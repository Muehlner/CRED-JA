<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroCliente">

	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Cliente</h1>
	        </div>
        </div>
        
        
		<div class="row">
			<form action="/cliente/cadastra" method="post">
			
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
						<label>Nº Matricula</label>
						<input class="form-control" name="numeroMatricula" placeholder="Digite o Nº da Matricula"/>
					</div>
					
					<div class="form-group">
						<label>Telefone</label>
						<input class="form-control" name="telefone" placeholder="(99) 99999-9999"/>
					</div>
							
					<div class="form-group">
						<button type="button" class="btn btn-default">Cancelar</button>
			        	<button type="submit" class="btn btn-primary">Salvar</button>
			        </div>
				</div>	
			</form>
		</div>	
	</div>
</mgTags:template>	