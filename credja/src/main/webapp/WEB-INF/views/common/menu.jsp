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
                            	<security:authorize access="hasRole('ROLE_ADMIN')">
	                                <li>
	                                    <a href="panels-wells.html">Orgãos</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
	                                <li>
	                                    <a href="buttons.html">Bancos</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
	                                <li>
	                                    <a href="notifications.html">Tabelas</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
	                                <li>
	                                    <a href="typography.html">Coeficientes</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
	                                <li>
	                                    <a href="/usuario"> Usuários</a>
	                                </li>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_ATENDENTE')">
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