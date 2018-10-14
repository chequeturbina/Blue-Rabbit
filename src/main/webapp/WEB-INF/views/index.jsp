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
          <li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
          <li><a href="<c:url value="/"/>">Acerca</a></li>
            <li><a href="<c:url value="/"/>">Cursos</a></li>
          <li><a href="<c:url value="/"/>">Videos</a></li>
          <li><a href="<c:url value="/"/>">Contacto</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registrate <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="<c:url value="registro/alumno"/>">Alumno</a></li>
              <li><a href="<c:url value="registro/profesor"/>">Profesor</a></li>
            </ul>
          </li>
         
           <!-- chorizote para iniciar sesion-->

            <li>
              <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Iniciar Sesion</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×</button>
               
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="Login">
                            
                                <form  name="form1" role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Correo</label>
                                    <div class="col-sm-10">
                                        <input type="email" name="txt" class="form-control" path="correo" id="email1" placeholder="Correo electronico" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                        Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="num" path="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-10">
                                        <input type="button" class="btn btn-primary btn-sm" onclick="administrador()" value="Iniciar Sesion">
                                        <a href="javascript:;">Forgot your password?</a>
                                    </div>
                                </div>
                                </form>
                            </div>
                            
    </div>
            </li>

            <!--Hasta aqui acaba el puto chorizote-->
            
        </ul>
      </div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
             <div class="heading-text">							
							<h1 class="animated flipInY delay1">Empieza Cursos en Linea</h1>
							<p>Educacion en Linea</p>
						</div>
            
					<div class="fluid_container">                       
                    <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
                        <div data-thumb="img/slides/thumbs/img1.jpg" data-src="img/slides/img1.jpg">
                            <h2>Nosotros desarrollamos.</h2>
                        </div> 
                        <div data-thumb="img/slides/thumbs/img2.jpg" data-src="img/slides/img2.jpg">
                        </div>
                        <div data-thumb="img/slides/thumbs/img3.jpg" data-src="img/slides/img3.jpg">
                        </div> 
                    </div><!-- #camera_wrap_3 -->
                </div><!-- .fluid_container -->
		</div>
	</header>
	<!-- /Header -->

  <div class="container">
    <div class="row">
					<div class="col-md-3">
						<div class="grey-box-icon">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="img/1.png" alt="" />
							</div><!--icon box top -->
							<h4>Cursos en Linea</h4>
							<p>Descripcion.</p>
     						<p><a href="#"><em>Leer mas</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="img/2.png" alt="" />
							</div><!--icon box top -->
							<h4>Conferencias</h4>
							<p>Descripcion.</p>
     						<p><a href="#"><em>Leer mas</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="img/3.png" alt="" />
							</div><!--icon box top -->
							<h4>Cobros</h4>
							<p>Descripcion.</p>
     						<p><a href="#"><em>Leer mas</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="img/4.png" alt="" />
							</div><!--icon box top -->
							<h4>Denuncias</h4>
							<p>Descripcion.</p>
     						<p><a href="#"><em>Leer mas</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
				</div>
    </div>
      <section class="news-box top-margin">
        <div class="container">
            <h2><span>Nuevos cursos</span></h2>
            <div class="row">
       
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="newsBox">
                        <div class="thumbnail">
                            <figure><img src="img/news2.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                            <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Desarrollador</h5></p>
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
                            <figure><img src="img/news3.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                            <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Fotografia</h5></p>
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
                            <figure><img src="img/news4.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                           <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Edicion de Audio</h5></p>
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
      	<div class="col-md-8"><div class="title-box clearfix "><h2 class="title-box_primary">Acerca de Nosotros</h2></div> 
        <p><span>ClassMates es una plataforma de conocimiento compartido, desarrollada con fines educativos.</span></p>
        <a href="#" title="read more" class="btn-inline " target="_self">leer mas</a> </div>
              
          
          <div class="col-md-4"><div class="title-box clearfix "><h2 class="title-box_primary">Proximos cursos</h2></div> 
            <div class="list styled custom-list">
            <ul>
            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Matematicas y Ciencias de la Computacion</a></li>
            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Matematicas y filosofia</a></li>
            <li><a title="Penatibus et magnis dis parturient montes ascetur ridiculus mus." href="#">Filosofia</a></li>
            <li><a title="Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci." href="#">Historia</a></li>
            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Arquelogia</a></li>
            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Fisica</a></li>
            </ul>
            </div>
         </div>
      </div>
      </section>
      
    	 
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
				opacityOnGrid: true,
				imagePath: 'assets/images/'
			});

		});
      
	</script>
    <!--  Script para validar admin en inicar sesion -->
	<script>
	function administrador(){
		if (document.form1.txt.value=="admin@admin" && document.form1.num.value=="1234"){window.location.href="<c:url value="/admin"/>";return}
		else {alert("Error en Usuario o Contraseña. Intenta de nuevo.")}
		}
	document.oncontextmenu=new Function("return false");
	</script>
    
</body>
</html>