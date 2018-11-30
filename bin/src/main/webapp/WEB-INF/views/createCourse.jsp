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
  
</head>
 <body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="img-responsive" href="<c:url value="/profesor"/>">
					<img src="/img/logo.png" width="200" height="90" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li ><a href="<c:url value="/profesor"/>">Volver</a></li>
				   
      
							<li><a class="btn btn-danger btn-sm" href="<c:url value="/logout" />">Cerrar Sesion</a></li>
						
            
            
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
								<input type="text" name="titulo" class="form-control" placeholder="Titulo" autofocus required>
							</div>
							<div class="form-group ">
								<label>
								Descripcion
							</label>
								<input type="text" name="descripcion" class="form-control" placeholder="Descripcion" autofocus required>
							</div>
							
							
								<div class="form-group">
								<label>Nivel Academico</label>
							
									<div class="checkbox">
                                        <label><input type="checkbox" name="primaria" value="primaria">Primaria</label>
                                    </div>
                                   <div class="checkbox">
                                       <label><input type="checkbox" name="secundaria" value="secundaria">Secundaria</label>
                                    </div>
                                   <div class="checkbox">
                                     <label><input type="checkbox" name="bachillerato" value="bachillerato" >Bachillerato</label>
                                   </div>
                                   <div class="checkbox ">
                                     <label><input type="checkbox" name="universidad" value="universidad" >Universidad</label>
                                   </div>
                                   <div class="checkbox ">
                                     <label><input type="checkbox" name="maestria" value="maestria" >Maestria</label>
                                   </div>
                                   <div class="checkbox ">
                                     <label><input type="checkbox" name="doctorado" value="doctorado" >Doctorado</label>
                                   </div>
							</div>
							
							<div class="form-group ">
								<label>
								Costo
							</label>
								<input type="number" min="0" max="10000" name="costo" class="form-control" placeholder="Costo" autofocus required>
							</div>
							
							
							<div class="form-group">
								<label>Horarios </label>  
								<div class="form-group">
								  <label for="sel1">Seleccione un horario:</label>
								  <select name="horario" class="form-control" id="sel1">
								    <option value="matutino">Matutino</option>
								    <option value="vespertino">Vespertino</option>
								    <option value="mixto">Mixto</option>
								  </select>
								</div>	
							</div>	
						
						<button type="submit" class="btn btn-two btn-success" >Crear</button><p><br/></p>
						</form>
					</div>
				</div>
			</div>
	<!-- /container -->
 	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->

	<script > 
	
		
	$(".datepicker").datepicker();
	   
	
    $('.basicExample').timepicker();

	
			
			
			

		      	
	
	</script>     

	
	<!-- Cargamos y mostramos la imagen -->
	
	<!-- Google Maps -->>
 </body>
</html> 