<%@page import="dao.CadastroDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    	//Obter os dados
    	
    	String nome = request.getParameter("nome");
    	String email = request.getParameter("email");
    	String senha = request.getParameter("senha");
    	
    	//Realizar Cadastro
    	
    	boolean situacao = CadastroDao.cadastrar(nome, email, senha);
    	
    	if(situacao == true){
    		session.setAttribute("email", email); 
    		response.sendRedirect("../admin.jsp?msg=cadastroOk");
    	}else{
    		response.sendRedirect("../index.jsp?msg=cadastroFalha"); 
    	}
    
    %>