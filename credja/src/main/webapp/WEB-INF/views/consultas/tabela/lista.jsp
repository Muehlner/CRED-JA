
<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 				prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" 				prefix="fmt" %>

<mgTags:template bodyName="listaUsuario">

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
            	<h1 class="page-header">Gerenciamento de Tabelas</h1>
            </div>    
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<label>Banco</label>
					<form:select path="bancos" name="idBanco" class="selectBanco form-control" >
						<form:option value="Selecione" label="Selecione..." />
						<form:options items="${bancos}" itemValue="id" itemLabel="descricao" />
					</form:select>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-primary pesquisar">Pesquisar</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<security:csrfInput/>
				<table id="tabela" class="isHidden table table-hover">
				</table>
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
		
		$('.pesquisar').on('click', function() {
			
			$('#tabela').empty();
			
			$.ajax({
				url: '/tabela/pesquisaTabelas?idBanco=' + idBanco,
				type: 'GET',
				dataType: 'json',
				cache: false,
				success: function (response) {
					$('#tabela').removeClass('isHidden');
					 
					$.each(response, function(i, element){				 
	            		 $('<tr></tr>').appendTo('#tabela').html(
	            		 				'<td>' + element.descricao 									 + '</td>' + 
	            		 			    '<td> <a href="mostra?id=' + element.id + '"> Alterar </a> ' + '</td>' +
	            		 			    '<td> <a href="remove?id=' + element.id + '"> Remover </a> ' + '</td>' );

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