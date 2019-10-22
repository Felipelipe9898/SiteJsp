package bd;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	//Atributo
	public static Connection con;
	
	//Método de conexao
	public static void  conectar() {
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/jsp", "root", "lipe0102");
			System.out.println("Conexão ok");
		}catch(Exception erro) {
			System.out.println("Falha ao conectar"+erro.getMessage());
		}
		
	}
		
	//Método para finalizar conexão
	public static void fechar() {
		
		try {
			con.close();
		}catch(Exception erro) {}
		
	}
}
