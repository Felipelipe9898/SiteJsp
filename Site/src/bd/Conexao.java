package bd;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	//Atributo
	public static Connection con;
	
	//M�todo de conexao
	public static void  conectar() {
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/jsp", "root", "lipe0102");
			System.out.println("Conex�o ok");
		}catch(Exception erro) {
			System.out.println("Falha ao conectar"+erro.getMessage());
		}
		
	}
		
	//M�todo para finalizar conex�o
	public static void fechar() {
		
		try {
			con.close();
		}catch(Exception erro) {}
		
	}
}
