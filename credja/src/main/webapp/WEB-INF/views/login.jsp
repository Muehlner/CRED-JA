<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <title>Cred Já - Emprestimos</title>
	
	    <!-- Bootstrap Core CSS -->
	    <link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	
	    <!-- MetisMenu CSS -->
	    <link href="/resources/css/metisMenu/metisMenu.min.css" rel="stylesheet">
	
	    <!-- Custom CSS -->
	    <link href="/resources/css/dist/sb-admin-2.css" rel="stylesheet">
	
	    <!-- Custom Fonts -->
	    <link href="/resources/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">
	</head>
	
	<body>
	  	<div class="container">
	        <div class="row">
	            <div class="col-md-4 col-md-offset-4">
	                <div class="login-panel panel panel-default">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">Login - Cred Já</h3>
	                    </div>
	                    <div class="panel-body">
	                        <form:form role="form" servletRelativeAction="/login" method="post">
	                            <fieldset>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Usuário" name="username" type="text" autofocus>
	                                </div>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Senha" name="password" type="password" value="">
	                                </div>
	                                <div class="checkbox">
	                                    <label>
	                                        <input name="remember" type="checkbox" value="Remember Me">Mantenha-me conectado
	                                    </label>
	                                </div>
	                                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Login" />
	                            </fieldset>
	                        </form:form>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>

	    <!-- jQuery -->
	    <script src="/resources/js/jquery/jquery.min.js"></script>
	
	    <!-- Bootstrap Core JavaScript -->
	    <script src="/resources/js/bootstrap/bootstrap.min.js"></script>
	
	    <!-- Metis Menu Plugin JavaScript -->
	    <script src="/resources/js/metisMenu/metisMenu.min.js"></script>
	
	    <!-- Custom Theme JavaScript -->
	    <script src="/resources/js/dist/sb-admin-2.js"></script>
    
	</body>
</html>