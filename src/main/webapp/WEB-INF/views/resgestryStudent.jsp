<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="/js/html5shiv.js"></script>
	<script src="/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="img-responsive" href="index.html">
					<img src="/img/logo.png" width="70" height="70" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="<c:url value="/"/>">Inicio</a></li>
					<li><a href="<c:url value="/"/>">Acerca</a></li>
						<li><a href="<c:url value="/"/>">Cursos</a></li>
					<li><a href="<c:url value="/"/>">Precio</a></li>
					<li><a href="<c:url value="/"/>">Videos</a></li>
					<li><a href="<c:url value="/"/>">Contacto</a></li>
				    <li class="active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Registro <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/registro/alumno"/>">Alumno</a></li>
							<li><a href="<c:url value="/registro/profesor"/>">Profesor</a></li>
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
                            
                                <form  role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Correo</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" path="correo" id="email1" placeholder="Correo electronico" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                        Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" path="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            Submit</button>
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

		<header id="head" class="secondary">
            <div class="container">
                    <h1>
                    	Registrate
                    </h1>
                  
                </div>
    </header>


	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">
						Registro
					</h3>
						
						<form method="POST" action="/registro/alumno" class="form-light mt-20" role="form">
							<div class="form-group">
								<label>
								Nombre
							</label>
								<input name="nombre" type="text" class="form-control" placeholder="Nombre">
							</div>
							<div class="form-group">
								<label>
								Apellido
							</label>
								<input name="apellido" type="text" class="form-control" placeholder="Apellido">
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Correo</label>
										<input type="email" name="correo" class="form-control" placeholder="Correo electronico">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Password
										</label>
										<input type="Password" name="password" class="form-control" placeholder="Password">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>
								Fecha de Nacimiento
							</label>
									<input type="date" name="Fecha_nacimiento" class="form-control" >
							</div>

							<div class="form-group">
								<label>Nivel Academico</label>
								<div class="dropdown">
									<select class="form-control" id="exampleFormControlSelect1">
										<c:forEach var="nivel" items="${niveles}">
				                         <option value="${nivel.ID_NIVEL}"> ${nivel.NIVEL} </option>
			                              </c:forEach>
									</select>
								</div>
							</div>
						<input type="submit" class="btn btn-two" value="Registrarse"></input><p><br/></p>
						</form>
					</div>
					
				</div>
			</div>
	<!-- /container -->

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
							<p class="simplenav">
								<a href="<c:url value="/"/>">Inicio</a> | 
								<a href="<c:url value="/"/>">Acerca</a> |
								<a href="<c:url value="/"/>">Cursos</a> |
								<a href="<c:url value="/"/>">Precio</a> |
								<a href="<c:url value="/"/>">Videos</a> |
								<a href="<c:url value="/"/>">Contacto</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; 2014. Template by <a href="http://webthemez.com/" rel="develop">WebThemez.com</a>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="/js/custom.js"></script>
	<script type="text/javascript"> 
		$(function() {
			$('.multiselect-ui').multiselect({
				includeSelectAllOption: true
			});
		});
	</script>
	
	<script LANGUAGE="JavaScript"> 
	function Entrar(password) {window.location=password+".htm"} 
	</script> 

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="/js/google-map.js"></script>


</body>
</html>