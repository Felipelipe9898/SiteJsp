<%@page import="dao.PostagemDao"%>
<%@page import="bd.Conexao"%>
<%@ include file= "topo.jsp" %>

	<h1 class= "título"> Postagens</h1>
	
	
	
	<form class= "formulario" action= "requisicoes/cadastrarPostagem.jsp">
	
		<%@include file= "msg.jsp" %>
	
		<input type= "text" placeholder= "Título" name= "titulo" class="form-control">
		
		<select name= "categoria" class= "form-control">
			<option>Entretenimento</option>
			<option>Gastronomia</option>
			<option>Saúde</option>
			<option>Tecnologia</option>
			<option>Viagens</option>
		</select>
	
		<textarea placeholder= "Texto"  name= "texto" class= "form-control"></textarea>        
		
		<input type="submit" value= "Cadastrar" class= "btn btn-primary">
		<input type= "reset" value= "Cancelar" class= "btn btn-warning">	
	
	</form>
	
	<table class= "table tabela" >
		<thead> 
			<tr>
				<th>Título</th>
				<th>Segmento</th>
				<th>Alterar</th>
				<th>Excluir</th>
			
			
			</tr>
			
		</thead>
		
		<% out.print(PostagemDao.selecao()); %>
		
	</table>
	
	
</body>
</html>

<%
	Conexao.conectar();
%>