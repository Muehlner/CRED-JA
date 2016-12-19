<%@ taglib uri="http://www.springframework.org/security/tags" 	prefix="security" %>

	<security:authorize access="isAuthenticated()">
 		<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Cadastros<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            	<security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
                                	<li>
                                    	<a href="/orgao">Orgão</a>
                                	</li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
                                	<li>
                                    	<a href="/banco">Banco</a>
                                	</li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/tabela">Tabela</a>
	                                </li>
                                </security:authorize>
                                <li>
                                    <a href="/coeficiente">Coeficiente</a>
                                </li>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/usuario"> Usuário</a>
	                                </li>
                                </security:authorize>
                                <li>
                                    <a href="grid.html">Cliente</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Alterações<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">Orgão</a>
                                </li>
                                <li>
                                    <a href="buttons.html">Banco</a>
                                </li>
                                <li>
                                    <a href="notifications.html">Tabela</a>
                                </li>
                                <li>
                                    <a href="typography.html">Coeficiente</a>
                                </li>
                                <li>
                                    <a href="icons.html"> Usuário</a>
                                </li>
                                <li>
                                    <a href="grid.html">Cliente</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i> Consultas<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            	<security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/orgao/lista">Orgãos</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/banco/lista">Bancos</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/tabela/lista">Tabelas</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="typography.html">Coeficientes</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR')">
	                                <li>
	                                    <a href="/usuario/lista"> Usuários</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMINISTRADOR') or hasRole('ROLE_ATENDENTE')">
	                                <li>
	                                    <a href="grid.html">Clientes</a>
	                                </li>
                                </security:authorize>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
	</security:authorize>
</nav>
 <!-- /Navigation -->