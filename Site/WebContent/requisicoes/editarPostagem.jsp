<%@page import="dao.PostagemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	
    	//Obter os dados 
    	int codigo = Integer.parseInt(request.getParameter("codigo"));
    	String titulo = request.getParameter("titulo");
    	String categoria = request.getParameter("categoria");
    	String texto = request.getParameter("texto");
    	
    	//Alterar
    	if(PostagemDao.alterar(codigo, titulo, categoria, texto)) {
    		response.sendRedirect("../postagens.jsp?msg=postagemAlterada");
    	}else{
    		response.sendRedirect("../postagens.jsp?msg=postagemNaoAlterada");
    	}
    %>
    