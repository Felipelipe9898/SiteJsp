<%@page import="dao.PostagemDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <% 
   
   		//Obter o código
   		int codigo = Integer.parseInt(request.getParameter("codigo"));
   
   		//Remover
   		if(PostagemDao.excluir(codigo)){ //Aqui ele subtende que é true
   			response.sendRedirect("../postagens.jsp?msg=postagemRemovida");			
   		}else{
   			response.sendRedirect("../postagens.jsp?msg=postagemNaoRemovida");
   		}
   %>