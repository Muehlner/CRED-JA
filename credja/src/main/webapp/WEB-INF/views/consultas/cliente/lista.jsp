<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<mgTags:template bodyName="listaCliente">
	<div id="page-wrapper">
	 	<div class="row">
			<div class="col-lg-12">
            	<h1 class="page-header">Gerenciamento de Clientes</h1>
            </div>
            
		</div>
		
		<div class="row">			
			<div class="col-lg-12">
			<br />
	            <div class="panel panel-default">
	                <!-- /.panel-heading -->
	                <div class="panel-body">
	                    <div class="table-responsive">
		                        <table class="table table-hover">
		                            <thead>
		                                <tr>
		                                    <th>Ações</th>
		                                    <th>Nome</th>
		                                    <th>E-mail</th>
		                                    <th>CPF</th>
		                                    <th>Telefone</th>
		                                </tr>
		                            </thead>
	                    			<c:forEach items="${clientes}" var="cliente">
			                            <tbody>
			                                <tr>
			                                    <td>
				                                    <div class="btn-group">
														<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													    	Ações
													  	</button>
													  	<div class="dropdown-menu">
													    	
													    	<a class="dropdown-item" href="../contrato/lista?id=${cliente.id}"> 
													    		<span class="glyphicon glyphicon-edit text-success"> Contratos</span>
													    	</a>
													    	
													    	<div class="dropdown-divider"></div>
													    	
													    	<a class="dropdown-item" href="../cliente/mostra?id=${cliente.id}">
													    		<span class="glyphicon glyphicon-edit text-success"> Alterar</span> 
													    	</a>
													    	
													    	<div class="dropdown-divider"></div>
													    		
													    	<a class="dropdown-item" href="../cliente/remove?id=${cliente.id}">
													    		<span class="glyphicon glyphicon-remove text-danger"> Remover</span> 
													    	</a>
													  	</div>
													</div>
			                                    </td>
			                                    <td>${cliente.nome}</td>
			                                    <td>${cliente.email}</td>
			                                    <td>${cliente.cpf}</td>
			                                    <td>${cliente.telefone}</td>
			                                </tr>
			                            </tbody>
	                        		</c:forEach>
		                        </table>
	                    </div>
	                    <!-- /.table-responsive -->
	                </div>
	                <!-- /.panel-body -->
	            </div>
	            <!-- /.panel -->
	        </div>
			<!-- /.col-lg-6 -->
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