
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

<!-- Estilos -->
<link rel= "stylesheet" href= "estilos.css">

</head>
<body>

	<!-- Validar página -->
	<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("index.jsp?msg=falhaSessao");
		}
	
	
	%>
	
	<!-- Menu -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	
  		<a class="navbar-brand" href="#">Projeto JSP</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto"> <!-- mr= Margem left (deixa a esquerda livre)  -->
    <li class="nav-item active">
        <a class="nav-link" href="admin.jsp">Início</a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="postagens.jsp">Postagens</a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="dados.jsp">Alterar</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="requisicoes/finalizarSessao.jsp">Sair</a>
      </li>
      
    </ul>
  </div>
</nav>