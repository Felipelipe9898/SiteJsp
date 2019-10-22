<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- Estilos  -->
<link rel="stylesheet" href="estilos.css"> <!-- Falando oq vai lincar (lincar com estilos) -->

<!-- JS -->
<script>

	//Função
	function valida() {
		
		//Capturar as senhas
		var senha1 = document.getElementById("senha1").value;
		var senha2 = document.getElementById("senha2").value;
		
		
		//Condicional
		if(senha1 != senha2) {
			alert("As senhas precisam ser iguais");
			return false;
		}
	}

 </script>

</head>
<body>

	<!-- Verifica se há sessão -->
	<%
		if(session.getAttribute("email")!= null){
			response.sendRedirect("admin.jsp");
		}
	
	
	
	%>



	<!-- Mensagem -->
	<%@include file="msg.jsp" %>

	<!--Principal  -->
	<div class= "container paginaInicial" >
		<div class="row">
			<div class="col-md-6">
				<h1>Cadastre-se</h1>
				<form action= "requisicoes/novoUsuario.jsp" onsubmit= "return valida()">
					<input type="text" placeholder="Nome" class="form-control">
					<input type="text" placeholder="E-mail" class="form-control">
					<input type="password" placeholder="Senha" class="form-control" id= "senha1" >
					<input type="password" placeholder="Repetir Senha" class="form-control" id= "senha2">
					
					<input type= "submit"  value= "Realizar Cadastro" class= "btn btn-primary">
				</form>
			</div>
				
			<div class="col-md-6" method= "post">
				<h1>Acessar Administrativo</h1>
					<form action=  "requisicoes/validaLogin.jsp"><!-- Para onde o submit deve direcionar -->
						<input type= "text" placeholder= "E-mail" class= "form-control" name= "email">
						<input type= "password" placeholder= "Senha" class= "form-control" name="senha">
						
						<input type= "submit"  value= "Entrar" class= "btn btn-primary">
					</form>
			</div>

		</div>
	</div>
	
</body>
</html>