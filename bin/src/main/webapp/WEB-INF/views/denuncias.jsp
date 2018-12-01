<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="free-educational-responsive-web-template-webEdu">
<meta name="author" content="webThemez.com">
<title>Blue-Rabbit</title>
<link rel="favicon" href="img/favicon.png">
<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="css/style.css">
<link rel='stylesheet' id='camera-css' href='css/camera.css'
	type='text/css' media='all'>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<main role="main" class="container"> <!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="img-responsive" href="<c:url value="admin"/>"> <img
					src="img/logo.png" width="200" height="90"
					alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="<c:url value="admin"/>">Inicio</a></li>
					<li><a href="<c:url value="eliminarUsuario"/>">Eliminar</a></li>
					<li class="active"><a href="<c:url value="denuncias"/>">Peticiones Denuncia</a></li>

					<li class="dropdown">
						<p class="dropdown-toggle btn btn-info btn-two" data-toggle="dropdown">${nombre}<b class="caret"></b></p>
						<ul class="dropdown-menu">
						    <li><a>${username}</a></li>
							<li><a class="btn btn-danger btn-sm" href="<c:url value="/logout" />">Cerrar Sesion</a></li>
						</ul></li>
					<!--Hasta Aqui para Cerrar Sesion-->

				</ul>

			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->
	</head>
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
		<h1>Denuncias</h1>
		</div>
		<div class="col-xs-4 col-xs-offset-2">
			<div class="input-group input-group-md">
				<span class="input-group-addon">Buscar</span> <input id="filtrar"
					type="text" class="form-control"
					placeholder="Ingresa a la persona que denuncias ..." />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-8">
		<p>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-8 col-xs-offset-2">

			<table class="table table-striped table-bordered">
				<thead class="thead-inverse">
					<tr>
						<th>id</th>
						<th>Denunciante</th>
						<th>Denunciado</th>
						<th>Denuncia</th>
					</tr>
				</thead>
				<tbody class="buscar">
					<c:forEach items="${denunciaas}" var="denuncias">
						<tr>
							<td><c:out value="${denuncias.id}" /></td>
							<td><c:out value="${denuncias.denunciante}" /></td>
							<td><c:out value="${denuncias.denunciado}" /></td>
							<td><span><c:out value="${denuncias.problema}" /></span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</main>
	<footer id="footer">
		<div class="social text-center">
			<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-facebook"></i></a>
		</div>
		<div class="clear"></div>
		<div class="footer2">
			<div class="container">
				<div class="row">
					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text">
								<sec:authorize access="isAuthenticated()">
			Usuario logeado: <sec:authentication var="principal"
										property="principal" /> ${principal.username} 
			| Roles: <sec:authentication property="principal.authorities"
										var="authorities" />
									<c:forEach items="${authorities}" var="authority"
										varStatus="vs">
								${authority.authority}
							</c:forEach>
								</sec:authorize>
							</p>
							<p class="text">
								Copyright &copy; 2014. Template by <a href="BlueRabbit"
									rel="develop">Blue Rabbit International</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="js/modernizr-latest.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type='text/javascript' src='js/jquery.min.js'></script>
	<script type='text/javascript'
		src='js/fancybox/jquery.fancybox.pack.js'></script>
	<script type='text/javascript' src='js/jquery.mobile.customized.min.js'></script>
	<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
	<script type='text/javascript' src='js/camera.min.js'></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
	<script>
		jQuery(function() {

			jQuery('#camera_wrap_4').camera({
				transPeriod : 500,
				time : 3000,
				height : '600',
				loader : 'false',
				pagination : true,
				thumbnails : false,
				hover : false,
				playPause : false,
				navigation : false,
				opacityOnGrid : false,
				imagePath : 'assets/images/'
			});

		});
	</script>
	<script>
		$(document).ready(function() {

			(function($) {

				$('#filtrar').keyup(function() {

					var rex = new RegExp($(this).val(), 'i');
					$('.buscar tr').hide();
					$('.buscar tr').filter(function() {
						return rex.test($(this).text());
					}).show();

				})

			}(jQuery));

		});
	</script>
</html>