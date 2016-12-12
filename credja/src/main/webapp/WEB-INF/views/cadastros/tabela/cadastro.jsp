<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroTabela">

	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Tabela</h1>
	        </div>
        </div>
		<div class="row">
			<form action="tabela/cadastra" method="post">
				<security:csrfInput/>
				<div class="col-lg-6">
					<div class="form-group">
						<label>Banco</label>
						<form:select path="bancos" name="idBanco"  class="form-control">
							<form:option value="Selecione" label="Selecione..." />
							<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
						</form:select>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="form-group">
						<label>Descrição</label>
						<input class="form-control" name="descricao" placeholder="Digite a descrição da Tabela" />
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