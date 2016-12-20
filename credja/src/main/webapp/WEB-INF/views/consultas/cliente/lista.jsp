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
		                                    <th>Nome</th>
		                                    <th>E-mail</th>
		                                    <th>CPF</th>
		                                    <th>Telefone</th>
		                                    <th style="text-align: center">Remover</th>
		                                    <th style="text-align: center">Alterar</th>
		                                </tr>
		                            </thead>
	                    			<c:forEach items="${clientes}" var="cliente">
			                            <tbody>
			                                <tr>
			                                    <td>${cliente.nome}</td>
			                                    <td>${cliente.email}</td>
			                                    <td>${cliente.cpf}</td>
			                                    <td>${cliente.telefone}</td>
			                                    <td style="text-align: center">
			                                    	<a href="../cliente/remove?id=${cliente.id}">	
			                                    		<span class="glyphicon glyphicon-remove text-danger"></span> 
			                                    	</a>
                                				</td>
                                				<td style="text-align: center">
                                					<security:csrfInput/>
			                                    	<a href="../cliente/mostra?id=${cliente.id}">	
			                                    		<span class="glyphicon glyphicon-edit text-success"></span> 
			                                    	</a>
			                                    </td>
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
</mgTags:template>	