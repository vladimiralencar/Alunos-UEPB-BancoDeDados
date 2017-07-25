
import java.sql.*;
import javax.sql.*;

public class conecta01 {

	/**
	 * @param args
	 */
	
	String driverName = "org.gjt.mm.mysql.Driver";

	//Criando os parâmetros para conexão com o Banco de Dados
	String serverName = "localhost";
	String mydatabase = "aulas";
	String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
	String username = "root";
	String password = "root";
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	
	public void conecta(){
		//registra o driver
		
			try {
				Class.forName(driverName);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.print("Erro ao registar o driver");
			}
				
		//Criando a conexão com o Banco de Dados
	
			try {
				con = DriverManager.getConnection(url, username, password);
				stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
										   ResultSet.CONCUR_READ_ONLY);
				
				//rs =
					//stmt.executeQuery("SELECT * FROM cliente order by nome desc");
				rs =
				stmt.executeQuery("SELECT max(codigo) as maximo FROM cliente");
				rs.beforeFirst();
				rs.next();
				System.out.println(" Maximo = " + rs.getString("maximo"));
				
				
				//rs =
				//stmt.executeQuery("SELECT * FROM cliente order by nome desc");
				
/*				rs.beforeFirst();
				
				System.out.println("Codigo - Nome");
				while (rs.next()) {
					int codigo = rs.getInt("codigo");
					String nome = rs.getString("nome");
					System.out.println(codigo+" - "+nome );
				}
*/
				desconecta();	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("Erro na conexao.");
			}	
			
			
	}
	
	public void desconecta() throws SQLException {
		stmt.close();
		con.close();	
	}
	
	
	public static void main(String[] args) {
		conecta01 cx = new conecta01();
		cx.conecta();
	}

}
