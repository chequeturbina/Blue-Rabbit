<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="css/style.css">
<link rel='stylesheet' id='camera-css' href='css/camera.css'
	type='text/css' media='all'>

</head>
<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="img-responsive" href="<c:url value="/"/>"> <img
					src="img/logo.png" width="200" height="90"
					alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
					<li><a href="<c:url value="profesor"/>">Mis Cursos</a></li>
					<li><a href="<c:url value="profesor"/>">Estadisticas</a></li>
					<li>
			<div class="col-md-2">
			<a class="btn btn-two btn-success" href="/profesor/crearCurso">Crear Curso</a>
			</div></li>

					<li><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#charger-manual">Denuncia</button></li>
					
					<li class="dropdown">
						<a class="dropdown-toggle btn btn-blue" href="#" data-toggle="dropdown">
						  ${nombre} </a>
						<ul class="dropdown-menu">
							<li><a class="btn btn-two btn"
						href="<c:url value="/logout" />">Cerrar Sesion</a></li>
						</ul></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</head>
<!-- /.navbar -->
<div class="container emp-profile">
	<div class="row">
		<div class="col-md-6">
			<div class="profile-head" >
				<h1><c:out value="${nombre}" /></h1>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="charger-manual" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Empieza Formulario --> 
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Denuncia</h4>
			</div>
			<div class="modal-body">
				<form method="POST" action="/nuevo/curso" class="form-light mt-20" role="form">
					<div class="form-group">
						<label>Persona a denunciar</label>
						<input type="text" name="comentarioDenuncia" class="form-control" placeholder="nombre profesor">
					</div>	
					<div class="form-group">
						<label>Comentario Denuncia</label>
						<input type="text" name="comentarioDenuncia" class="form-control" placeholder="comentario">
					</div>		
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" data-dismiss="modal">Cancelar</button>
				<button class="btn btn-blue" type="submit">Denunciar</button>
			</div>
		</div>
		<!-- Termina Formulario -->
		<!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<footer id="footer">


	<div class="social text-center">
		<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
			class="fa fa-facebook"></i></a>
	</div>

	<div class="clear"></div>
	<!--CLEAR FLOATS-->
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
								<c:forEach items="${authorities}" var="authority" varStatus="vs">
								${authority.authority}
							</c:forEach>
							</sec:authorize>
						</p>
						<p class="text-right">
							Copyright &copy; 2014. Template by <a href="BlueRabbit"
								rel="develop">Blue Rabbit International</a>
						</p>
					</div>
				</div>

			</div>
			<!-- /row of panels -->
		</div>
	</div>
</footer>

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="js/modernizr-latest.js"></script>
<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/fancybox/jquery.fancybox.pack.js'></script>

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

</body>
</html>