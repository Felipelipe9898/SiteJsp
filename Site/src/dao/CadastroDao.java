package dao;

import java.sql.PreparedStatement;

import bd.Conexao;

public class CadastroDao {

	public static boolean cadastrar(String nome, String email, String senha) {
		
		//Variavel
		boolean cadastrar = false;
		
		//Conexao
		Conexao.conectar();
		
		//Tentativa
		try {
			
			String sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";
			
			PreparedStatement pstmt = Conexao.con.prepareStatement(sql);
			pstmt.setString(1, nome);
			pstmt.setString(2, email);
			pstmt.setString(3, senha);
			pstmt.execute();
			
			cadastrar = true;
			
			System.out.println("cadastro ok");
		}catch(Exception erro) {
			System.out.println("Falha ao cadastrar");
			
		}finally {
			Conexao.fechar();
		}
		
		//Retorno
		return cadastrar;
		
	}
}
