<%@ tag language="java" pageEncoding="UTF-8"%>

<%@attribute name="bodyName" required="true" %>

<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <title>Cred Já - Emprestimos</title>
	
        <!-- Bootstrap Core CSS -->
	    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- MetisMenu CSS -->
	    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	
	    <!-- Custom CSS -->
	    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
		
	    <!-- Morris Charts CSS -->
	    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">
	
	    <!-- Custom Fonts -->
	    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	</head>
	
	<body class="${bodyName}">
	 	<div id="wrapper">
			<jsp:include page="/WEB-INF/views/common/header.jsp" />
			<jsp:include page="/WEB-INF/views/common/menu.jsp" />
			<jsp:doBody />
		</div>
	</body>
	
</html>	