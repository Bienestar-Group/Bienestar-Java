package enlaceDatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conexion {
	
	//Creación objetos de conexion
	
			private Connection cnx=null;
			private Statement st=null;
			private ResultSet rsconexion;
			private String Usu ="root";
			private String Pass ="123";
			private String bd="bienestarj";
			private String url ="jdbc:mysql://localhost/"+bd;
			
			private boolean conectar(){
				boolean v=false;
				try
				{
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					cnx=DriverManager.getConnection(url,Usu,Pass);
					if(cnx!=null)
					{
						v=true;
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				return v;
			}
			
			public ResultSet consultar(String Query)throws Exception{
				if(conectar()){
					st=cnx.createStatement();
					rsconexion=st.executeQuery(Query);
				}
				return rsconexion;
			}
			
			public Statement ejecutar(String Sentencia)throws Exception{
				if(conectar()){
					st=cnx.createStatement();
					st.executeUpdate(Sentencia);
				}
				return st;
			}
}
