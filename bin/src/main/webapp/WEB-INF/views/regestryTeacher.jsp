<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Blue-Rabbit">
<meta name="author" content="webThemez.com">
<title>"Blue-Rabbit"</title>
<link rel="favicon" href="/img/favicon.png">
<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<!-- Custom styles for our template -->
<link rel="stylesheet" href="/css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/miscursos.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
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
						src="/img/logo.png" width="200" height="90"
						alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="<c:url value="/"/>">Inicio</a></li>
					<li class="active" class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Registro <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/registroA"/>">Alumno</a></li>
							<li><a href="<c:url value="/registroP"/>">Profesor</a></li>
						</ul></li>
					<!-- chorizote para iniciar sesion-->


					<!--Hasta aqui acaba el puto chorizote-->
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<div class="container">
		<div class="row">
			<div class="col">
				<header id="head" class="secondary">
					<h1>Registrate</h1>
				</header>
			</div>
		</div>
		<c:if test="${error != null}">
			<div class="alert alert-danger">${error}</div>
		</c:if>
	</div>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>

				<form method="POST" action="/registro/profesor"
					class="form-light mt-20" role="form" enctype="multipart/form-data"
					modelAttribute="message">
					<div class="form-group">
						<label> Nombre </label> <input type="text" name="name"
							class="form-control" placeholder="Nombre">
					</div>
					<div class="form-group">
						<label> Apellidos </label> <input type="text" name="lastname"
							class="form-control" placeholder="Apellidos">
					</div>
					<div class="form-group">
						<label> RFC </label> <input type="text" name="rfc"
							class="form-control" placeholder="RFC">
					</div>
					<div class="form-group">
						<label> CURP </label> <input type="text" name="curp"
							class="form-control" placeholder="CURP">
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Correo</label> <input type="email" name="correo" required
									autocomplete="off" class="form-control"
									placeholder="Correo electronico" autofocus required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Password </label> <input type="Password" name="password"
									required autocomplete="off" class="form-control" minlength="8"
									maxlength="16" placeholder="Password" autofocus required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group"></div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Confirma Password </label> <input type="Password"
									name="ConfirmPass" required autocomplete="off"
									class="form-control" minlength="8" maxlength="16"
									placeholder="Password" required>
							</div>
						</div>
					</div>
					
					<!--  Esta madre se fue a la verga
					<div class="form-group">
						<label> Fecha de Nacimiento </label> <input type="date"
							name="Fecha_nacimiento" class="form-control" required>
					</div>
					-->
					
					<div class="form-group">
								<label>CV</label>
								<div class="form-group">
								<input type="file" name="cv" id="ejemplo_archivo_1">
								</div>
					</div>
					<div class="form-group">
								<label>INE/IDE</label>
								<div class="form-group">
									<input type="file" name="ine" id="ejemplo_archivo_1">
								</div>
							</div>
					<button type="submit" class="btn btn-two btn-success">Registrarse</button>
					<p>
						<br />
					</p>
				</form>
			</div>

		</div>
	</div>
	<!-- /container -->

	<footer id="footer">

		<div class="social text-center">
			<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-facebook"></i></a>
		</div>

		<div class="clear"></div>
		<!--CLEAR FLOATS-->
		</div>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="<c:url value="/"/>">Inicio</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; 2014. Template by <a
									href="http://webthemez.com/" rel="develop">WebThemez.com</a>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/js/custom.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.multiselect-ui').multiselect({
				includeSelectAllOption : true
			});
		});
	</script>

</body>
</html>