<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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


<script src="/js/back.js"></script>

</head>

<body onload="nobackbutton();">

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
				<li class="dropdown">
					     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registro<b class="caret"></b></a>
						    <ul class="dropdown-menu">
						        <li><a  href="<c:url value="/registroA"/>">Alumno</a></li>
								<li><a  href="<c:url value="/registroP"/>">Profesor</a></li>
							</ul>	
					</li>
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
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
					<h1>Iniciar Sesion</h1>
				</header>
			</div>
		</div>

		<c:if test="${error != null}">
			<div class="alert alert-danger">${error}</div>
		</c:if>
		<c:if test="${info != null}">
			<div class="alert alert-danger">${info}</div>
		</c:if>
		<c:if test="${success != null}">
			<div class="alert alert-info">${success}</div>
		</c:if>
		<c:if test="${registro != null}">
			<div class="alert alert-info">${registro}</div>
		</c:if>
	</div>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>

				<form method="POST" action="/login" class="form-light mt-20"
					role="form">
					<div class="form-group">
						<label> Email </label> <input name="username" id="username"
							type="email" required autocomplete="off" class="form-control"
							placeholder="Email" autofocus required>
					</div>
					<div class="form-group">
						<label> Password </label> <input name="password" id="password"
							type="password" required autocomplete="off" class="form-control"
							placeholder="Password" autofocus required>
					</div>

					<input type="submit" class="btn btn-two btn-warning"
						value="Inicar Sesion"></input>
					<p>
						<br/>
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

		<div class="clear">
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
	<script src="/js/custom.js"></script>


</body>
</html>