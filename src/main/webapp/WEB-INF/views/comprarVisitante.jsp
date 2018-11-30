<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<link rel='stylesheet' id='camera-css' href='css/camera.css'
	type='text/css' media='all'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="/js/back.js"></script>


</head>

<body  onload="nobackbutton();">
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
				<a class="img-responsive" href="<c:url value="/"/>"><img
						src="/img/logo.png" width="200" height="90"
						alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
					
					<li><a href="<c:url value="/cursosVisitante"/>">Volver</a></li>
					
					
					<li>
						<form action="/loginpage">
								<input type="submit" class="btn btn-two btn-warning"
								value="Iniciar Sesion"></input>
							</form>
					</li>

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
	</div>


	<!-- container -->
	<div class="container">
	
		<h2 class="text-center">Adquiere este curso ¡YA!</h2>
        <hr/>
	
	<!--CARDSSS-->
		<div class=" cardscu col-xs-12 col-md-12">		
		
		<h2>${curso.TITULO}</h2>
		
		<h3>Profesor:${curso.PROFESOR}</h3>
		
		<h3>Horario:${curso.HORARIO}</h3>
		<br>
		
		<h3>Descripcion:${curso.DESCRIPCION} </h3>
		
		<h2>$ ${curso.COSTO}</h2>
	
			
		</div>
		
		<br>
		<div class="row">
		
        <!-- You can make it whatever width you want. I'm making it full width
             on <= small devices and 4/12 page width on >= medium devices -->
           <div class="col-md-4"></div>
        <div class="col-xs-12 col-md-4 ">
        
        <!-- este lo quitamos en visitante
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form" method="POST" action="javascript:void(0);">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input 
                                            type="tel"
                                            class="form-control"
                                            name="cardNumber"
                                            placeholder="Valid Card Number"
                                            autocomplete="cc-number"
                                            required autofocus 
                                        />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control" 
                                        name="cardExpiry"
                                        placeholder="MM / YY"
                                        autocomplete="cc-exp"
                                        required 
                                    />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVC"
                                        autocomplete="cc-csc"
                                        required
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <a href="<c:url value="/alumno/comprar/${curso.ID_CURSO}"/>" class="subscribe btn btn-success btn-lg btn-block" type="button">Comprar</a>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
            
             -->
            <div class="col-xs-12">
                                <a href="<c:url value="/loginpage"/>" class="subscribe btn btn-success btn-lg btn-block" type="button">Comprar</a>
                            </div>
        </div>            
        
       
    </div><!-- row -->
	
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


<div class="modal fade" id="charger-manual" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
		
			<!-- Empieza Formulario --> 
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Denuncia</h4>
			</div>
			<div class="modal-body">
				<form method="POST" action="/denunciar/alumno" class="form-light mt-20" role="form">
					<div class="form-group">
						<label>Correo del Alumno a denunciar</label>
						<input type="email" name="denunciado" id="denunciado" class="form-control" placeholder="Correo Alumno">
					</div>	
					<div class="form-group">
						<label>Denuncia</label>
						<textarea rows="4" cols="50" name="problema" id="problema" class="form-control" placeholder="Comentario"></textarea>
					</div>
					<button class="btn btn-blue" type="submit">Denunciar</button>		
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" data-dismiss="modal">Cancelar</button>
			</div>
		</div>
		</div>
		</div>
		<!-- Termina Formulario -->

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
	


</body>
</html>