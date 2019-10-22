<%@page import="dao.PostagemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	
    	//Obter dados
    	String titulo = request.getParameter("titulo");
    	String categoria = request.getParameter("categoria");
    	String texto = request.getParameter("texto");
    	
    	//Realizar o cadastro
    	boolean situacao = PostagemDao.cadastro(titulo, categoria, texto);
    	
    	//Redirecionamento
    	if(situacao == true){
    	response.sendRedirect("../postagens.jsp?msg=postagemOk");
    	}else{
    		response.sendRedirect("../postagens.jsp?msg=postagemFalha");
    	}
    	
    
    
    %>>