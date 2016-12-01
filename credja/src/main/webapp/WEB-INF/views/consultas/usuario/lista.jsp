<%@ taglib tagdir="/WEB-INF/tags" 								prefix="mgTags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 		prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<mgTags:template bodyName="listaUsuario">

	<security:authentication property="principal" var="user"/>
	
	<div id="page-wrapper">
	 	<div class="row">
			<div class="col-lg-12">
            	<h1 class="page-header">Gerenciamento de Usuários</h1>
            </div>
            
		</div>
		<div class="row">
			<div class="col-lg-12">
				<button class="btn btn-primary btn-lg">
					Criar Usuário
				</button>
			</div>
			
			
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
		                                    <th>Login</th>
		                                    <th>Telefone</th>
		                                    <th>Perfil</th>
		                                    <th style="text-align: center">Remover</th>
		                                    <th style="text-align: center">Alterar</th>
		                                </tr>
		                            </thead>
	                    			<c:forEach items="${usuarios}" var="usuario">
			                            <tbody>
			                                <tr id="tr_${usuario.id}">
			                                    <td>${usuario.nome}</td>
			                                    <td>${usuario.email}</td>
			                                    <td>${usuario.cpf}</td>
			                                    <td>${usuario.login}</td>
			                                    <td>${usuario.telefone}</td>
			                                    <c:forEach items="${usuario.roles}" var="role">
			                                    	<c:if test="${role.name == 'ROLE_ADMINISTRADOR'}">
			                                    		<td>Administrador</td>
			                                    	</c:if>
			                                    	<c:if test="${role.name == 'ROLE_ATENDENTE'}">
			                                    		<td>Atendente</td>
			                                    	</c:if>
			                                    </c:forEach>
			                                    
			                                    <td style="text-align: center">
			                                    	<a href="../usuario/remove?id=${usuario.id}">	
			                                    		<span class="glyphicon glyphicon-remove text-danger"></span> 
			                                    	</a>
                                				</td>
                                				<td style="text-align: center">
                                					<security:csrfInput/>
			                                    	<a href="../usuario/mostra?id=${usuario.id}">	
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
	
	 <script type="text/javascript">
	    function removeUsuario(id) {
	      $.post("../usuario/remove", {'id' : id}, function() {  
	    	  $("#tr_"+id).closest("tr").hide();
	      });
	    }
	  </script>
	
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