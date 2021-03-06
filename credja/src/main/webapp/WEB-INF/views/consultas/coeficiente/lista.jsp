<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<mgTags:template bodyName="listaCoeficiente">
	<div id="page-wrapper">
	 	<div class="row">
			<div class="col-lg-12">
            	<h1 class="page-header">Gerenciamento de Coeficientes</h1>
            </div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
					<label>Banco</label>
					<form:select path="bancos" name="idBanco" class="selectBanco form-control" >
						<form:option value="Selecione" label="Selecione..." />
						<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
					</form:select>
				</div>
				<div class="form-group">
					<label>Tabela</label>
					<select class="form-control selectTabela" name="idCoeficiente" id="selectTabela" disabled="disabled">
					</select>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-primary pesquisar">Pesquisar</button>
				</div>
			</div>
		</div>
		<div class="row isHidden" id="rowTable">
			<div class="col-lg-12">
				<security:csrfInput/>
				 <div class="panel panel-default">
					<div class="panel-body">
						<div class="table-responsive">
							<table id="tabela" class="table table-hover">
					
							</table>
						</div>
					</div>
				</div>			
			</div>
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
					
					$('.selectTabela').prop("disabled", false);
					
					$('<option></option>').appendTo('#selectTabela').html(
						'Selecione'
					);		

					$.each(response, function(i, element){
						$('<option value=' + element.id + '></option>').appendTo('#selectTabela').html(
							element.descricao
						);
					});
				}
			});
		});	
		
		var idCoeficiente;
		
		$('.selectTabela').on('change', function() {
			idTabela = $(this).val();
		});	
		
		$('.pesquisar').on('click', function() {
			$.ajax({
				url: '/coeficiente/pesquisaCoeficientes?idTabela=' + idTabela,
				type: 'GET',
				dataType: 'json',
				cache: false,
				success: function (response) {
					
					$('#rowTable').removeClass('isHidden');
					
					$('<thead><tr></tr></thead>').appendTo('#tabela').html(
						'<tr>' +
					    	'<th>Valor</th>' +
					    	'<th>Prazo</th>' +
					    	'<th>Data</th>' +
					      	'<th style="text-align: center">Remover</th>' +
					      	'<th style="text-align: center">Alterar</th>' +
						'</tr>'	
					);		
					
					$.each(response, function(i, element){
				 		$('<tbody><tr></tr></tbody>').appendTo('#tabela').html(
        						'<td>' + 
        							element.valor + 
            					'</td>' +
            					
            					'<td>' + 
    								element.prazo + 
        						'</td>' +
        						
        						'<td>' + 
									element.data + 
    							'</td>' +
        						
            				    '<td style="text-align: center">' +
                            		'<a href="../tabela/remove?id=' +  element.id + '">' +	
                            			'<span class="glyphicon glyphicon-remove text-danger"></span>' + 
                            		'</a>' +
            					'</td>' +
            					
            					'<td style="text-align: center">' + 
                            		'<a href="../tabela/mostra?id='+ element.id+ '">' +	
                            			'<span class="glyphicon glyphicon-edit text-success"></span>' + 
                            		'</a>' +
                            	'</td>'
						);
						
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