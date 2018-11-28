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
<link rel="stylesheet" href="/css/miscursos.css">
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
					<li class="active"><a href="<c:url value="/"/>">Inicio</a></li>
					<li><a href="<c:url value="/"/>">Tutorias</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Registro <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/registroA"/>">Alumno</a></li>
							<li><a href="<c:url value="/registroP"/>">Profesor</a></li>
						</ul></li>
					<!-- chorizote para iniciar sesion-->

					<li>
						<form action="/loginpage">
							<input type="submit" class="btn btn-two btn-blue"
								value="Iniciar Sesion"></input>
						</form>
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
			<div class="col">
				<header id="head" class="secondary">
					<h1>Registrate</h1>
				</header>
			</div>
		</div>
		<c:if test="${error != null}">
			<div class="alert alert-danger">${error}</div>
		</c:if>
	</div>


	<!-- container -->
	<div class="container">
		<div class="row">
		<h2 class="text-center">Cursos que impartes </h2>
        <hr/>
	</div>
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Cursos que impartes
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="viewed">257 <b class="glyphicon glyphicon-eye-open"></b></span>
                        <span data-toggle="tooltip" title="viewed">3 <b class="glyphicon glyphicon-star"></b></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.3</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031158.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/post-thumbnail-list" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Colourful Tabbed Slider Carousel
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="Viewed">433 <i class="glyphicon glyphicon-eye-open"></i></span>
                        <span data-toggle="tooltip" title="Favorited">4 <i class="glyphicon glyphicon-star"></i></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.3</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031247.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/colourful-tabbed-slider-carousel" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Portfolio using Panels
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="Viewed">2.1K <b class="glyphicon glyphicon-eye-open"></b></span>
                        <span data-toggle="tooltip" title="Favorited">13 <b class="glyphicon glyphicon-star"></b></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.3</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031258.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/portfolio-using-panels" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Parallax Login Form
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="Viewed">11.5K <b class="glyphicon glyphicon-eye-open"></b></span>
                        <span data-toggle="tooltip" title="Favorited">24 <b class="glyphicon glyphicon-star"></b></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.3</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031306.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/parallax-login-form" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Timeline (responsive)
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="Viewed">7.3K <b class="glyphicon glyphicon-eye-open"></b></span>
                        <span data-toggle="tooltip" title="Favorited">31 <b class="glyphicon glyphicon-star"></b></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.3</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031311.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/timeline-responsive" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <h4>
                    Responsive Quote Carousel
                    <span class="label label-info info">
                        <span data-toggle="tooltip" title="Viewed">2.5K <b class="glyphicon glyphicon-eye-open"></b></span>
                        <span data-toggle="tooltip" title="Favorited">18 <b class="glyphicon glyphicon-star"></b></span>
                        <span data-toggle="tooltip" title="Bootstrap version">3.0.0</span>
                    </span>
                </h4>
                <img src="http://www.remabledesigns.com/bootsnipp/img/201402031314.png" alt="...">
                <a href="http://bootsnipp.com/snippets/featured/responsive-quote-carousel" class="btn btn-primary col-xs-12" role="button">View Snippet</a>
                <div class="clearfix"></div>
            </div>
        </div>
    </div> 
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


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/js/custom.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.multiselect-ui').multiselect({
				includeSelectAllOption : true
			});
		});
		
		$(document).ready(function(){

		    $(".filter-button").click(function(){
		        var value = $(this).attr('data-filter');
		        
		        if(value == "all")
		        {
		            //$('.filter').removeClass('hidden');
		            $('.filter').show('1000');
		        }
		        else
		        {
//		            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//		            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
		            $(".filter").not('.'+value).hide('3000');
		            $('.filter').filter('.'+value).show('3000');
		            
		        }
		    });
		    
		    if ($(".filter-button").removeClass("active")) {
		$(this).removeClass("active");
		}
		$(this).addClass("active");

		});
		
	</script>

</body>
</html>