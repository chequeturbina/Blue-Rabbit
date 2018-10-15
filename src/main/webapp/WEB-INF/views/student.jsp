<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>Blue-Rabbit</title>
	<link rel="favicon" href="img/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css"> 
	<link rel="stylesheet" href="css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="css/style.css">
    <link rel='stylesheet' id='camera-css'  href='css/camera.css' type='text/css' media='all'> 
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="navbar navbar-inverse">
    <div class="container">
      <div class="navbar-header">
        <!-- Button for smallest screens -->
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        <a class="img-responsive" href="<c:url value="/"/>">
          <img src="img/logo.png"  width="200" height="90" alt="Techro HTML5 template"></a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav pull-right mainNav">
          <li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
          <li><a href="<c:url value="alumno"/>">Mis Cursos</a></li>
          <li><a href="<c:url value="alumno"/>">Lista de Deseos</a></li>
          <li><a href="<c:url value="alumno"/>">Carrito de Compra</a></li>
         
          <!-- chorizote para iniciar sesion-->
            <li><button type="button" class="btn btn-danger">Denuncia</button></li>
            <!--Hasta aqui acaba el puto chorizote-->
            
        </ul>
      </div>
			<!--/.nav-collapse -->
		</div>
	</div>
</body>
	<!-- /.navbar -->
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="img/perfil.png"  width="200" height="90" alt="Techro HTML5 template">
                            <div class="file btn btn-lg btn-primary">
                                Cambiar Foto
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        Nombre usuario
                                    </h5>
                                    <h6>
                                        Profesion
                                    </h6>
                                    <p class="proile-rating">calificacion : <span>8/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Acerca de</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Cronologia</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Editar Perfil"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>CV</p>
                            <p>Habilidades</p>
                            <a href="">Habilidad 1</a><br/>
                            <a href="">Habilidad 2</a><br/>
                            <a href="">Habilidad 3</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Usuario123</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nombre</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>nombre usuario</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>usuario123@gmail.com</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Numero Celular</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>123 456 789</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profesion</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>nombre profesion</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experiencia</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Experto</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Costo por Hora</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Cursos</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>23</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nivel de Ingles</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Experto</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Disponibilidad</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 meses</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Biografia</label><br/>
                                        <p>Tu descripcion</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
    <footer id="footer">
 
		
			<div class="social text-center">
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-dribbble"></i></a>
				<a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
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
								Copyright &copy; 2014. Template by <a href="BlueRabbit" rel="develop">Blue Rabbit International</a>
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
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});

		});
      
	</script>
    
</body>
</html>