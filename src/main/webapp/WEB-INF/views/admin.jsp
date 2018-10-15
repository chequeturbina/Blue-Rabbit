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
	<!-- Fixed navbar -->
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
          <li class="active"><a href="<c:url value="admin"/>">Inicio</a></li>
          <li><a href="<c:url value="admin"/>">Eliminar</a></li>
          <li><a href="<c:url value="admin"/>">Peticiones Denuncia</a></li>
          <li><a href="<c:url value="admin"/>">Cobrar</a></li>
         
          <!-- chorizote para iniciar sesion-->

            <li>
              <button class="btn btn-primary btn-blue" data-toggle="modal" data-target="#myModal" onclick="location.href='/'">SALIR</button>
            </li>

            <!--Hasta aqui acaba el puto chorizote-->
            
        </ul>
      </div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->
	<div class="container">
            	<div class="row">
            		<div class="col col-lg-8">
						    <h1>
		                    	En Construccion
		                    </h1>
					</div>
				</div>
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