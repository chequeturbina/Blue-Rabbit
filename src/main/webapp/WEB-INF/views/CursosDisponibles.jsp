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
				<a class="img-responsive" href="<c:url value="/"/>"> <a
					class="img-responsive" href="<c:url value="/"/>"> <img
						src="/img/logo.png" width="200" height="90"
						alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="<c:url value="/"/>">Inicio</a></li>
					<li class="active"><a href="<c:url value="/cursos"/>">Tutorias</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Registro <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/registroA"/>">Alumno</a></li>
							<li><a href="<c:url value="/registroP"/>">Profesor</a></li>
						</ul></li>
					

					<li>
						<form action="/loginpage">
							<input type="submit" class="btn btn-two btn-blue"
								value="Iniciar Sesion"></input>
						</form>
					</li>

			

					<!--Hasta aqui acaba el puto chorizote-->
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<div class="container">
		
		<c:if test="${error != null}">
			<div class="alert alert-danger">${error}</div>
		</c:if>



	<!-- container -->
	<div class="container">
	
		<h2 class="text-center">Cursos Disponibles</h2>
        <hr/>
	
	<!--CARDSSS-->
	<div class="padre">
	
	<c:forEach var="curso" items="${cursos}">
  <div class="card">
     <div class="container">
    <h4><b><a href="<c:url value="/alumno/cursos/${curso.ID_CURSO}"/>">${curso.TITULO}</a></b></h4>
    <label>Profesor:${curso.PROFESOR}</label>
    <br>
    <label>Descripci�n</label> 
    <p>${curso.DESCRIPCION}</p> 
     <label>Horario</label>
    <p>${curso.HORARIO}</p>  
      </div>
  </div>
 	</c:forEach>
  <!--CARDSSS-->
  </div><!-- padre -->
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
		</div></footer>

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->

	<script src="js/modernizr-latest.js"></script>
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
				opacityOnGrid : true,
				imagePath : 'assets/images/'
			});

		});
	</script>

</body>
</html>