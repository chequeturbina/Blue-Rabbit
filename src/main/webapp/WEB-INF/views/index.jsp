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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="css/style.css">
<link rel='stylesheet' id='camera-css' href='css/camera.css'
	type='text/css' media='all'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
					src="img/logo.png" width="200" height="90"
					alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
					<li><a href="<c:url value="/"/>">Tutorias</a></li>
					<li>
						<sec:authorize access="!isAuthenticated()">
							<form action="/loginpage">
								 <div class="dropdown">
									  <button type="button" class="btn btn-blue dropdown-toggle" data-toggle="dropdown">
									    Registro
									  </button>
									  <ul class="dropdown-menu">
									    <li><a class="dropdown-item" href="<c:url value="/registroA"/>">Alumno</a></li>
									 	<li><a class="dropdown-item" href="<c:url value="/registroP"/>">Profesor</a></li>
									  </ul>
									</div> 
							</form>
						</sec:authorize>
					</li>

					<!-- chorizote para iniciar sesion-->

					<li>
						<sec:authorize access="!isAuthenticated()">
							<form action="/loginpage">
								<input type="submit" class="btn btn-two btn-blue"
								value="Iniciar Sesion"></input>
							</form>
						</sec:authorize>
					</li>
					
					<li>
						<sec:authorize access="isAuthenticated()">
							<form action="/loginpage">
								<a class="dropdown-toggle btn btn-blue" href="#" data-toggle="dropdown">
						  		${nombre} </a>
								<ul class="dropdown-menu">
									<li><a class="btn btn-two btn"
									href="<c:url value="/logout" />">Cerrar Sesion</a></li>
								</ul>
							</form>
						</sec:authorize>
					</li>

					<!-- Inicio barra de busqueda
            <form class="busqueda" action="">
  				<input type="text" placeholder="Buscar..." name="search">
  				<button type="submit"><i class="fa fa-search"></i></button>
  				
  				<style>
  					* {
  						box-sizing: border-box;
					}	

					/* Estilo del campo de busqueda */
					form.busqueda input[type=text] {
  						padding: 10px;
  						font-size: 17px;
  						border: 1px solid grey;
  						float: left;
  						width: 80%;
  						background: #f1f1f1;
					}

					/* Estilo del boton */
					form.busqueda button {
  						float: left;
  						width: 20%;
  						padding: 10px;
  						background: #2196F3;
  						color: white;
  						font-size: 17px;
  						border: 1px solid grey;
  						border-left: none; /* Evita doble borde */
  						cursor: pointer;
					}

					form.busqueda button:hover {
  						background: #0b7dda;
					}

					/* Limpia flotantes */
					form.busqueda::after {
  						content: "";
  						clear: both;
  						display: table;
					}
  				</style>
		</form> 
		<!-- Final barra de busqueda-->
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
	
	<c:if test="${info != null}">
	<div class="alert alert-info">${info}</div>
</c:if>
		<div class="container">
			<div class="heading-text">
				<h1 class="animated flipInY delay1">Empieza Cursos en Linea</h1>
				<p>Educacion en Linea</p>
			</div>

			<div class="fluid_container">
				<div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
					<div data-thumb="img/slides/thumbs/img1.jpg"
						data-src="img/slides/img1.jpg">
						<h2>Nosotros desarrollamos.</h2>
					</div>
					<div data-thumb="img/slides/thumbs/img2.jpg"
						data-src="img/slides/img2.jpg"></div>
					<div data-thumb="img/slides/thumbs/img3.jpg"
						data-src="img/slides/img3.jpg"></div>
				</div>
				<!-- #camera_wrap_3 -->
			</div>
			<!-- .fluid_container -->
		</div>
	</header>
	<!-- /Header -->

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="grey-box-icon">
					<div class="icon-box-top grey-box-icon-pos">
						<img src="img/1.png" alt="" />
					</div>
					<!--icon box top -->
					<h4>Cursos en Linea</h4>
					<p>Descripcion.</p>
					<p>
						<a href="#"><em>Leer mas</em></a>
					</p>
				</div>
				<!--grey box -->
			</div>
			<!--/span3-->
			<div class="col-md-4">
				<div class="grey-box-icon">
					<div class="icon-box-top grey-box-icon-pos">
						<img src="img/2.png" alt="" />
					</div>
					<!--icon box top -->
					<h4>Tendencias</h4>
					<p>Descripcion.</p>
					<p>
						<a href="#"><em>Leer mas</em></a>
					</p>
				</div>
				<!--grey box -->
			</div>
			<!--/span3-->
			<div class="col-md-4">
				<div class="grey-box-icon">
					<div class="icon-box-top grey-box-icon-pos">
						<img src="img/3.png" alt="" />
					</div>
					<!--icon box top -->
					<h4>Destacado</h4>
					<p>Descripcion.</p>
					<p>
						<a href="#"><em>Leer mas</em></a>
					</p>
				</div>
				<!--grey box -->
			</div>
			<!--/span3-->
		</div>
		<section class="news-box top-margin">
			<div class="container">
				<h2>
					<span>Nuevos cursos</span>
				</h2>
				<div class="row">

					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="newsBox">
							<div class="thumbnail">
								<figure>
									<img src="img/news2.jpg" alt="">
								</figure>
								<div class="caption maxheight2">
									<div class="box_inner">
										<div class="box">
											<p class="title">
											<h5>Desarrollador</h5>
											</p>
											<p>Descripcion del curso</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="newsBox">
							<div class="thumbnail">
								<figure>
									<img src="img/news3.jpg" alt="">
								</figure>
								<div class="caption maxheight2">
									<div class="box_inner">
										<div class="box">
											<p class="title">
											<h5>Fotografia</h5>
											</p>
											<p>Descripcion del curso.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="newsBox">
							<div class="thumbnail">
								<figure>
									<img src="img/news4.jpg" alt="">
								</figure>
								<div class="caption maxheight2">
									<div class="box_inner">
										<div class="box">
											<p class="title">
											<h5>Edicion de Audio</h5>
											</p>
											<p>Descripcion Del curso.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>



		<section class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="title-box clearfix ">
						<h2 class="title-box_primary">Acerca de Nosotros</h2>
					</div>
					<p>
						<span>ClassMates es una plataforma de conocimiento
							compartido, desarrollada con fines educativos.</span>
					</p>
					<a href="#" title="read more" class="btn-inline " target="_self">leer
						mas</a>
				</div>


				<div class="col-md-4">
					<div class="title-box clearfix ">
						<h2 class="title-box_primary">Proximos cursos</h2>
					</div>
					<div class="list styled custom-list">
						<ul>
							<li><a
								title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus."
								href="#">Matematicas y Ciencias de la Computacion</a></li>
							<li><a
								title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus."
								href="#">Matematicas y filosofia</a></li>
							<li><a
								title="Penatibus et magnis dis parturient montes ascetur ridiculus mus."
								href="#">Filosofia</a></li>
							<li><a
								title="Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci."
								href="#">Historia</a></li>
							<li><a
								title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus."
								href="#">Arquelogia</a></li>
							<li><a
								title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus."
								href="#">Fisica</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>


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