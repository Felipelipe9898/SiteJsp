<%@page import="bean.PostagemBean"%>
<%@page import="dao.PostagemDao"%>
<%@include file="topo.jsp" %>

<%
	//Obter o codigo
	int codigo = Integer.parseInt(request.getParameter("codigo"));

	//Obter os dados da postagem
	PostagemBean postagem = PostagemDao.selecao(codigo);
%>

<h1 class= "título"> Editar Postagens</h1>
	
	
	
	<form class= "formulario" action= "requisicoes/editarPostagem.jsp">
	
		<%@include file= "msg.jsp" %>
	
	
	<input type= "hidden" name= "codigo" value="<% out.print(codigo); %>" >	
	
		<input type= "text" value="<% out.print (postagem.getTitulo()); %>" placeholder= "Título" name= "titulo" class="form-control">
		
		<select name= "categoria" class= "form-control">
			<option><% out.print (postagem.getCategoria()); %> </option>
			<option>Entretenimento</option>
			<option>Gastronomia</option>
			<option>Saúde</option>
			<option>Tecnologia</option>
			<option>Viagens</option>
		</select>
	
		<textarea placeholder= "Texto"  name= "texto" class= "form-control"> <% out.print (postagem.getTexto()); %> </textarea>        
		
		<input type="submit" value= "Alterar" class= "btn btn-primary">
		<a href= "postagens.jsp" class= "btn btn-warning">Cancelar</a>
	
	</form>