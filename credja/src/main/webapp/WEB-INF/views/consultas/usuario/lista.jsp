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
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#criarUsuario">
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
			                                <tr>
			                                    <td>${usuario.nome}</td>
			                                    <td>${usuario.email}</td>
			                                    <td>${usuario.cpf}</td>
			                                    <td>${usuario.login}</td>
			                                    <td>${usuario.telefone}</td>
			                                    <td>Administrador</td>
			                                    <td style="text-align: center">
			                                    	<a href="#">	
			                                    		<span class="glyphicon glyphicon-remove text-danger"></span> 
			                                    	</a>
                                				</td>
                                				<td style="text-align: center">
			                                    	<a href="#">	
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
			
		   	<div class="modal fade" id="criarUsuario" tabindex="-1" role="dialog" aria-labelledby="labelCreateUuser" aria-hidden="true">
	           <div class="modal-dialog">
	               <div class="modal-content">
	                   	<div class="modal-header">
	                       	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                       	<h4 class="modal-title" id="labelCreateUuser">Criar Usuário</h4>
	                   	</div>
	                   		<form:form role="form" servletRelativeAction="../usuario/cadastra" method="post">
		                   		<div class="modal-body">
		                        	<div class="form-group">
                                         <label>Nome</label>
                                         <input class="form-control">
                                    </div>
		                       		<div class="form-group">
                                         <label>E-mail</label>
                                         <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                         <label>CPF</label>
                                         <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                         <label>Telefone</label>
                                         <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                         <label>Login</label>
                                         <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                         <label>Senha</label>
                                         <input class="form-control" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Perfil</label>
                                        <select class="form-control" name="perfilUser" >
                                        	<option>Selecione...</option>
                                        	<option>Administrador</option>
                                        	<option>Atendente</option>
                                        </select>
                                        
                                    </div>
		                   		</div>
			                  	<div class="modal-footer">
			                    	<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			                       	<button type="submit" class="btn btn-primary">Salvar</button>
			                   	</div>
	                   		</form:form>
	               </div>
	               <!-- /.modal-content -->
	           </div>
	           <!-- /.modal-dialog -->
	       </div>
	       <!-- /.modal -->
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