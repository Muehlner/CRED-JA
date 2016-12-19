<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<mgTags:template bodyName="cadastroCoeficiente">

	<div id="page-wrapper">
		<div class="row">
	        <div class="col-lg-12">
	            <h1 class="page-header">Cadastro de Coeficiente</h1>
	        </div>
        </div>
        <div class="row">
			<form action="coeficiente/cadastra" method="post">
				<security:csrfInput/>
				
				<div class="col-lg-12">
					<div class="form-group">
						<label>Banco</label>
						<form:select path="bancos" name="idBanco" class="selectBanco form-control" >
							<form:option value="Selecione" label="Selecione..." />
							<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
						</form:select>
					</div>
				</div>
				
				
					<div class="col-lg-12 isHidden" id="divSelectTabela">
						<label>Tabela</label>
						<div class="form-group">
							<select id="selectTabela" class="form-control"></select>
						</div>
					</div>
					
				
				<div class="form-group">
					<button type="button" class="btn btn-default">Cancelar</button>
		        	<button type="submit" class="btn btn-primary">Salvar</button>
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
    
    <script type="text/javascript">
		var idBanco;

		$('.selectBanco').on('change', function() {
			idBanco = $(this).val();
		});
		
		$('.selectBanco').on('change', function() {
			
			$.ajax({
				url: '/tabela/pesquisaTabelas?idBanco=' + idBanco,
				type: 'GET',
				dataType: 'json',
				cache: false,
				success: function (response) {
					
					$('#divSelectTabela').removeClass('isHidden');
					
					$.each(response, function(i, element){
						$('#selectTabela')
				         .append($("<option></option>").text(element.descricao)); 
					});
				}
			});
		});
		
    </script>
    
    <style>
    	.isHidden {
			display: none
		}
    </style>
	    
</mgTags:template>