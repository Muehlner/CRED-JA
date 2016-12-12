<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>
<mgTags:template bodyName="cadastroUsuario">

	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Banco</h1>
	        </div>
        </div>
		<div class="row">
			<form action="banco/cadastra" method="post">
				
				<security:csrfInput/>
				<div class="col-lg-6">
					<div class="form-group">
						<label>Descri��o</label>
						<input class="form-control" name="descricao" placeholder="Digite a descri��o do Banco" />
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