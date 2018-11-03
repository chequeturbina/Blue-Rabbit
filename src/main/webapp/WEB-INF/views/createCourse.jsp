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
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/horario.css">
	
	<!-- Datapiker :D -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  
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
					<img src="/img/logo.png" width="200" height="90" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
					<li><a href="<c:url value="/"/>">Tutorias</a></li>
				    <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Registro <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/registro/alumno"/>">Alumno</a></li>
							<li><a href="<c:url value="/registro/profesor"/>">Profesor</a></li>
						</ul>
					</li>
            <li>
              <button class="btn btn-primary btn-blue" data-toggle="modal" data-target="#myModal">
    Iniciar Sesion</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    �</button>
               
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
            <li><button type="button" class="btn btn-danger">Denuncia</button></li>
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
            			<header id="head" class="secondary">
						    <h1>
		                    	Nuevo Curso
		                    </h1>
						</header>
					</div>
				</div>
            </div>
 	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">
					</h3>
						
						<form method="POST" action="/nuevo/curso" class="form-light mt-20" role="form">
							<div class="form-group">
								<label>
								Titulo
							</label>
								<input type="text" name="title" class="form-control" placeholder="Titulo">
							</div>
							<div class="form-group ">
								<label>
								Descripcion
							</label>
								<input type="text" name="description" class="form-control" placeholder="Descripcion">
							</div>
							
							
								<div class="form-group">
								<label>Nivel Academico</label>
							
									<div class="checkbox">
                                        <label><input type="checkbox" name="p" value="primaria">Primaria</label>
                                    </div>
                                   <div class="checkbox">
                                       <label><input type="checkbox" name="s" value="secundaria">Secundaria</label>
                                    </div>
                                   <div class="checkbox disabled">
                                     <label><input type="checkbox" name="b" value="bachillerato" >Bachillerato</label>
                                   </div>
                                   <div class="checkbox disabled">
                                     <label><input type="checkbox" name="u" value="universidad" >Universidad</label>
                                   </div>
							</div>
							
							
							
							
							<div class="form-group">
								<label>
								<h4>Horarios</h4> 
								
							</label>
								<span id="toAdd"></span>  
								<div class="horario">																																									
								<input name="fecha-0" type="text"  class="form-control datepicker" placeholder="Fecha">
								<input name="inicio-0" type="text"  class="form-control basicExample horI" placeholder="horario">
								<input  name="fin" type="text"  class="form-control basicExample horI" placeholder="horario">	
								</div>
								
								<div id="horarioAdd">
								<a id="add" class="btn btn-success">agregar otro horario</a>
								<a id="remove" class="btn btn-warning">eliminar horario</a>
								</div>
								
								
							</div>	
						
						<button type="submit" class="btn btn-two btn-blue" >Crear</button><p><br/></p>
					</div>
				</div>
			</div>
	<!-- /container -->
 	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->

	<script > 
	
		
	$(".datepicker").datepicker();
	   
	
    $('.basicExample').timepicker();

	
			
			
			var i =1;
			$("#add").click(function(){
		        $("#toAdd").prepend("<div id=\"H-"+i+"\" class=\"horario\">\n"																																									
						+"<input type=\"text\" name=\"fecha-"+i+"\" class=\"form-control datepicker\"  placeholder=\"Fecha\">\n"
						+"<input  type=\"text\" name=\"inicio-"+i+"\" class=\"form-control basicExample horI\" placeholder=\"horario\">\n"
						+"<input  type=\"text\" name=\"fin-"+i+"\" class=\"form-control basicExample horI\" placeholder=\"horario\">\n"	
				+"</div>");
		        i++;
		        $(".datepicker").datepicker();
				   
				
			      $('.basicExample').timepicker();
			
		    });
			
			$("#remove").click(function(){
				$("#H-"+(i-1)+"").remove();
				i--;});
			

		      	
	
	</script>     

	
	<!-- Cargamos y mostramos la imagen -->
	
	<!-- Google Maps -->>
 </body>
</html> 