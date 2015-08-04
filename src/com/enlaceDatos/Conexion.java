package com.enlaceDatos;

import java.sql.*;

public class Conexion {
	
	 //creo objetos de conexion
	   private Connection cnx=null;
	   private Statement st=null;
	   private ResultSet rsconexion;
	   //variables para la ruta de conexion
	   private String usu="root";
	   private String password="123";
	   private String bd="bienestar_java";
	   private String url="jdbc:mysql://localhost/"+bd;
	  //creo mis metodos para establecer la conexion
	  private boolean Conectar(){//metodo para establecer la conxion
	      boolean v=false;
	     try{
	         Class.forName("com.mysql.jdbc.Driver").newInstance();//activo el driver
	         cnx=DriverManager.getConnection(url, usu, password);//Estableco conexion
	         if(cnx!=null){//valido la conexion
	             v=true;
	         }
	     }catch(Exception e){
	       e.printStackTrace();
	       cnx=null;
	     }
	      return v;
	  }
	  
	  public ResultSet Consultar(String Query)throws Exception{//metodo para aplicar consultas
	      if(Conectar()){
	          st=cnx.createStatement();//creo el objeto para realizar la consulta
	          rsconexion=st.executeQuery(Query);//lleno el set de datos
	      }
	      st=null;//libero objeto consulta
	      cnx=null;//libero conexion
	      return rsconexion;//retorno el set de datos que se pidio en la consulta
	  }
	  
	  public int Ejecutar(String Query)throws SQLException{
	      int ej=0;
	      if(Conectar()){//valido si esta conectado
	         st=cnx.createStatement();//creo el objeto para realizar la consulta
	         ej=st.executeUpdate(Query);//ejecuto la consulta y me retorna un entero
	      }
	      return ej;
	  }

}
