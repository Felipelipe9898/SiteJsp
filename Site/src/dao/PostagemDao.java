package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bd.Conexao;
import bean.PostagemBean;

public class PostagemDao {
	
	//Cadastro
	public static boolean cadastro(String titulo, String categoria, String texto) {
		
		//Variavel
		
		boolean cadastro = false;
		
		//Conexão
		Conexao.conectar();
		
		//Tentativa 
		try {
			String sql= "INSERT INTO postagens (titulo, categoria, texto) VALUES (?, ?, ?)";
			
			PreparedStatement pstmt = Conexao.con.prepareStatement(sql);
			pstmt.setString(1, titulo);
			pstmt.setString(2, categoria);
			pstmt.setString(3, texto);
			pstmt.execute();
			
			cadastro = true; // se executar todas as fazes do cadastro quer dizer que ele foi realizado entao (true), porque ele começa valendo falso 
			
			System.out.println("Cadastro ok");
		}catch(Exception erro){
			System.out.println("Falha ao cadastrar");
		}finally {
			Conexao.fechar();
		}
		
		return cadastro;
	}
	
	//Seleção
	public static String selecao() {
		
		//Conexao
		Conexao.conectar();
		
		
		//Inicio Estrutura
		String estrutura = "<tbody>";
		
		//Postagens 
		try {
			
			String sql = "SELECT * FROM postagens";
			
			Statement stmt = Conexao.con.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
			
			estrutura+= "<tr>"; //table row(linha)
				estrutura += "<td>"+rs.getString(2)+"</td>";//table divison(colunas)
				estrutura += "<td>"+rs.getString(3)+"</td>";
				estrutura += "<td><a href='editarPostagem.jsp?codigo="+rs.getInt(1)+"'class= 'btn btn-warning'>Editar</a></td>"; //O "a" serve para criar um link
				estrutura += "<td><a href='requisicoes/excluirPostagem.jsp?codigo="+rs.getInt(1)+"' class= 'btn btn-danger'>Excluir</a></td>"; // passa a interrogação e a coluna 1 é de codigo dai vai excluir o codigo
			estrutura+= "</tr>";
			
			}
			
		}catch(Exception erro) {
			System.out.println("Falha ao listar");
		}finally {
			Conexao.fechar();
		}
		//Fim estrutura
		       estrutura+= "<tbody>";
		       
		 //Retorno
		  return estrutura;
		
	}
	
	//Excluir
	public static boolean excluir(int id) {
		
		//Variavel 
		boolean excluir = false;
		
		//Conexão
		Conexao.conectar();
		
		//Tentativa 
		try {
			String sql = "DELETE FROM postagens WHERE codigo = ?";
			
			PreparedStatement pstmt = Conexao.con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.execute();
			
			excluir=true;
		}catch(Exception erro){
			
			System.out.println("Falha ao remover a postagem");
			
		}finally{
			Conexao.fechar();
		}
		
		
		//Retorno
		return excluir;
		
	}
	
	
	//Selecionar postagem especifica para alteração
	public static PostagemBean selecao(int codigo) {
		
		//Objeto
		PostagemBean postagem = new PostagemBean();
		
		//Conexao
		Conexao.conectar();
		
		//Tentativas
		try {
			
			String sql = "SELECT *FROM postagens WHERE codigo = ?"; //quando eu quero pegar algo especifico
			
			PreparedStatement pstmt= Conexao.con.prepareStatement(sql);
			pstmt.setInt(1, codigo);
			
			ResultSet rs = pstmt.executeQuery();//vai retornar as linhas e colunas 
			rs.last(); //vai para a ultima e unica linha que eu tenho com  o codigo especificado
			
			postagem.setTitulo(rs.getString(2));
			postagem.setCategoria(rs.getString(3));
			postagem.setTexto(rs.getString(4));
			
		}catch(Exception erro){
			
		}finally {
			Conexao.fechar();
		}
		
		
		//Retorno
		return postagem;
		
	}
	
	//Alterar
	
	public static boolean alterar(int codigo, String titulo, String categoria, String texto ){ //passar por parametro quem vai ser alterado
		
		//Variavel
		boolean alterar = false;
		
		//Conexão
		Conexao.conectar();
		
		//Tentativa
		
		try {
			
			String sql = "UPDATE postagens SET titulo=?, categoria=?, texto=? WHERE codigo=?";
			
			PreparedStatement pstmt = Conexao.con.prepareStatement(sql);
			pstmt.setString(1, titulo);
			pstmt.setString(2, categoria);
			pstmt.setString(3, texto);
			pstmt.setInt(4, codigo);
			pstmt.execute();
			
			alterar = true;
		}catch(Exception erro){
			System.out.println("Falha ao alterar");
		}finally {
			Conexao.fechar();
		}
		
		//Retorno
		return alterar;
		
		
	}

}
