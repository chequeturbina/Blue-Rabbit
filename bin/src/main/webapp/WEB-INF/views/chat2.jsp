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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="/css/chat.css">
<link rel="stylesheet" href="/css/style.css">



</head>

<body>
	
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="img-responsive" href="<c:url value="/alumno"/>"> <img
					src="/img/logo.png" width="200" height="90"
					alt="Techro HTML5 template"></a>
			</div>
			<br>
			<div  class="row">
					<div class="col-lg-12">
			<a class="btn btn-blue btn-two float-right" href="<c:url value="/profesor" />">Volver</a>  
			</div></div>
			<!--/.nav-collapse -->
		</div>
	</div>
	
	
	<br>
	<br>
	<br>
<section class="container">
    <div class="row form-group">
        <div class="col-xs-12 col-md-offset-2 col-md-8 col-lg-8 col-lg-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-comment"></span> Comments
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>
                        <ul class="dropdown-menu slidedown">
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-refresh">
                            </span>Refresh</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-ok-sign">
                            </span>Available</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-remove">
                            </span>Busy</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-time"></span>
                                Away</a></li>
                            <li class="divider"></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-off"></span>
                                Sign Out</a></li>
                        </ul>
                    </div>
                </div>
                <div class="panel-body body-panel">
                    <ul class="chat">
                    	<c:forEach var="mensaje" items="${curso.mensajes}">
                    	<c:if test="${mensaje.ALUMNO==idAlumno && mensaje.PROFESOR==idProfesor}">
							    <c:if test="${mensaje.PROPIEDAD==2}">
								<li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=${alumno.nombre}" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">${alumno.nombre}</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>Ahora</small>
                                </div>
                                <p>${mensaje.MENSAJE}</p>
                            </div>
                        </li>         	       
						 </c:if>
						 <c:if test="${mensaje.PROPIEDAD==1}">
							      <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=${curso.PROFESOR}" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                    <strong class="pull-right primary-font">${curso.PROFESOR}</strong>
                                </div>
                                <p>${mensaje.MENSAJE}</p>
                            </div>
                        </li>
                        
							    </c:if>
							    </c:if>
                   
  	                    </c:forEach> 
                    </ul>
                </div>
                <div class="panel-footer clearfix">
                    <textarea id="mensaje" class="form-control" rows="3"></textarea>
                    <span class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="margin-top: 10px">
                        <button class="btn btn-warning btn-lg btn-block" id="btn-chat">Send</button>
                    </span>
                </div>
            </div>
        </div>
    </div>
   </section>
 <input id="nombre" value="${profesor.nombre}" type="hidden">
 <input id="idA" value="${idAlumno}" type="hidden">
 <input id="idP" value="${idProfesor}" type="hidden">
 <input id="idC" value="${curso.ID_CURSO}" type="hidden">
<script>
  jQuery(document).ready(
	function($) {

	  $("#btn-chat").click(function(event) {

		var mensaje = $('#mensaje').val();
		var idAlumno = $('#idA').val();
		var idProfesor = $('#idP').val();
		var idCurso = $('#idC').val();
		var nombre = $('#nombre').val();
		 $("#mensaje").val("")
		
		  $("ul").append("<li class=\"right clearfix\"><span class=\"chat-img pull-right\"> \
          <img src=\"http://placehold.it/50/FA6F57/fff&text="+nombre+" alt=\"User Avatar\" class=\"img-circle\" /> \
              </span>\
                 \ <div class=\"chat-body clearfix\"> \
                      <div class=\"header\">\
                          <small class=\"text-muted\"><span class=\"glyphicon glyphicon-time\"></span>13 mins ago</small>\
                          <strong class=\"pull-right primary-font\">"+nombre+"</strong>\
                      </div>\
                      <p>"+mensaje+"</p>\
                  </div>\
              </li>");

		$.post("/profesor/cursoT/chat/"+idCurso, {
			mensaje : mensaje,
			idAlumno : idAlumno,
			idProfesor : idProfesor,
			idCurso : idCurso
		}, function(data) {

			var json = JSON.parse(data);
			//...

		}).done(function() {
		}).fail(function(xhr, textStatus, errorThrown) {
		}).complete(function() {
			$('#mensaje').val('afnafn');
					
		});

	});

  });
</script>	

<footer id="footer2">
	<div class="social text-center">
		<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
			class="fa fa-facebook"></i></a>
	</div>

	<div class="clear"></div>
	<!--CLEAR FLOATS-->
	<div class="footer2">
		<div class="container">
			<div class="row">
				<div class="col-md-6 panel">
					<div class="panel-body">
						<p class="text">
							<sec:authorize access="isAuthenticated()">
			Usuario logeado: <sec:authentication var="principal"
									property="principal" /> ${principal.username} 
			| Roles: <sec:authentication property="principal.authorities"
									var="authorities" />
								<c:forEach items="${authorities}" var="authority" varStatus="vs">
								${authority.authority}
							</c:forEach>
							</sec:authorize>
						</p>
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

</body>
</html>