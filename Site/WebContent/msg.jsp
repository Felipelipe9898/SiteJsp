<%    
	try{
	//Obter a mensagem
	String msg = request.getParameter("msg");

	//Selecionando o tipo da mensagem
	switch(msg){
		case "falhaSessao":
			out.print("<div class='alert alert-danger'>Favor efetuar o login</div>"); 
		break;
		
		case "sessaoFinalizada":
			out.print("<div class='alert alert-success'>Sessão finalizada com sucesso </div>");
		break;
		
		case "falhaLogin":
			out.print("<div class='alert alert-danger'>E-mail ou senha incorretos </div>");
		break;
		
		case "postagemOk":
			out.print("<div class='alert alert-success'>Postagem cadastrada com sucesso </div>");
		break;
		
		case "postagemFalha":
			out.print("<div class='alert alert-danger'>Falha ao cadastrar Postagem </div>");
	    break;
	    
		case "postagemRemovida":
			out.print("<div class='alert alert-success'>Postagem Removida </div>");
		break;
		
		case "postagemNaoRemovida":
			out.print("<div class='alert alert-danger'>Postagem não removida </div>");
		break;
		
		case "postagemAlterada":
			out.print("<div class='alert alert-success'>Postagem alterada </div>");
		break;
		
		case "postagemNaoAlterada":
			out.print("<div class='alert alert-danger'>Postagem não alterada </div>");
		break;
		
		case "cadastroOk":
			out.print("<div class='alert alert-success'>Usuário cadastrado </div>");
		break;
		
		case "cadastroFalha":
			out.print("<div class='alert alert-danger'>Falha ao cadastrar </div>");
		break;
	
	}
 }catch(Exception erro){}

%>