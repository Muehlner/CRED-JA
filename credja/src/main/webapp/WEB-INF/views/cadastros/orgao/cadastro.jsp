<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>


<mgTags:template bodyName="cadastroUsuario">
	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Orgão</h1>
	        </div>
        </div>
        
		<div class="row">
			<form action="orgao/cadastro" method="post">
				<security:csrfInput/>
				<div class="col-lg-6">
					<div class="form-group">
						<label>Nome</label>
						<input class="form-control" name="descricao" placeholder="Digite a descrição do Orgão" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Salvar</button>
					</div>
				</div>			
			</form>
		</div>
	</div>
</mgTags:template>