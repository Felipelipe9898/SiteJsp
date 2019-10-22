<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <% 
 	//Obter o e-mail e a senha 
 	String email = request.getParameter("email"); /* Pega o nome definido no name */
 	String senha = request.getParameter("senha");
 	
 	//Condicional	
 	if(email.equals("admin@apexensino.com.br") && senha.equals("123")){
 		session.setAttribute("email", email);
 		response.sendRedirect("../admin.jsp");	/* voltar um diretório(voltar uma págian) */
 	}else{
 		response.sendRedirect("../index.jsp?msg=falhaLogin");
 	}
 %>