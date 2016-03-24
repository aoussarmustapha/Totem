<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="../css/style.css">
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
		<script src="../js/jquery.js"></script>
		<title>TOTEM INFORMATIVO</title>
<script type="text/javascript">
			$(document).ready(function() {
				$('#jahveDesc1').html(function() {
				    return $(this).text().replace(/\b([a-z])/gi, '<span class="caps">$1</span>');
				});
			});
		</script>
	</head>
	<body class="poluzzi">
		<div class="container">
			<!--<img id="logo" src="img/logo.jpg" />-->
			<div class="row form-cerca-aula">
				<h1 id="jahveTitle1">TOTEM</h1>
				<h1 id="jahveDesc1">Lorenzo Turrini/Poluzzi Giovanni Minelli</h1>
				<a href="CercaAula.jsp" class="jahve btn"><span class="icon-search"></span> Cerca aula</a>
				<a href="CercaProfessore.jsp" class="jahve btn"><span class="icon-target"></span> Cerca professore</a>
				<div class="footer">
	            <div class="row">
	                <div class="col-md-4">
	                    <img id="logo2" src="../img/Logo.jpg" alt="">
	                </div>
	                <div class="col-md-4">
	                    <img id="logo3" src="../img/Logo ITIS 2.png" alt="">
	                </div>
	                <div class="col-md-4">
	                    <img id="logo4" src="../img/ComunediBologna_Emblema_COL.png" alt="">
	                </div>
	            </div>
	            <div class="row">
	                <div class="copyright">
	                    <small>&copy; Copyright 2016, Giovanni Minelli & Lorenzo Poluzzi/Turrini (L^2PT)</small>
	                </div>
	            </div>
            </div>
			</div>
        </div>
	</body>
</html>