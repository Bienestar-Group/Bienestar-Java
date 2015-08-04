package com.modelo;

import java.sql.ResultSet;

import com.enlaceDatos.Conexion;

public class Regional extends Conexion{
	
	//declaracion de atributos o datos miembros de la clase concpeto
	private long idRegional;
	private String nombreRegional;
	private String direccionRegional;
	private long telefonoRegional;
	private long pbxRegional;
	private String directorRegional;
	private long telefonoDirector;
	private String estadoRegional;
	
	//encapsulamiento de datos miembro 
	
	public long getIdRegional() {
		return idRegional;
	}
	
	public void setIdRegional(long idRegional) {
		this.idRegional = idRegional;
	}
	
	public String getNombreRegional() {
		return nombreRegional;
	}
	
	public void setNombreRegional(String nombreRegional) {
		this.nombreRegional = nombreRegional;
	}
	
	public String getDireccionRegional() {
		return direccionRegional;
	}
	
	public void setDireccionRegional(String direccionRegional) {
		this.direccionRegional = direccionRegional;
	}
	
	public long getTelefonoRegional() {
		return telefonoRegional;
	}
	
	public void setTelefonoRegional(long telefonoRegional) {
		this.telefonoRegional = telefonoRegional;
	}
	
	public long getPbxRegional() {
		return pbxRegional;
	}
	
	public void setPbxRegional(long pbxRegional) {
		this.pbxRegional = pbxRegional;
	}
	
	public String getDirectorRegional() {
		return directorRegional;
	}
	
	public void setDirectorRegional(String directorRegional) {
		this.directorRegional = directorRegional;
	}
	
	public long getTelefonoDirector() {
		return telefonoDirector;
	}
	
	public void setTelefonoDirector(long telefonoDirector) {
		this.telefonoDirector = telefonoDirector;
	}
	
	public String getEstadoRegional() {
		return estadoRegional;
	}
	
	public void setEstadoRegional(String estadoRegional) {
		this.estadoRegional = estadoRegional;
	}
	
	  public void registrarRegional(){
          try{
             String registro="insert into regional values(null,'"+this.nombreRegional+"','"+this.direccionRegional+"',"+this.telefonoRegional+","+this.pbxRegional+",'"+this.directorRegional+"',"+this.telefonoDirector+",'"+this.estadoRegional+"')";
             if(this.Ejecutar(registro)>0)
                System.out.println("registro exitoso");
             else
                System.out.println("registro fallido");
          }
          catch(Exception e1){
              System.out.println("Ocurrio una excepción "+e1);
          }
          
    }
    
    public void modificarRegional(){
          try{
             String registro="update regional set NOMBRE_REGIONAL='"+this.nombreRegional+"', DIRECCION_REGIONAL='"+ this.direccionRegional +"',TELEFONO_REGIONAL="+this.telefonoRegional+", PBX_REGIONAL="+this.pbxRegional+", DIRECTOR_REGIONAL='"+this.directorRegional+"',TELEFONO_DIRECTOR="+this.telefonoDirector+",ESTADO_REGIONAL='"+this.estadoRegional+"' where ID_REGIONAL='"+this.idRegional+"'";
             if(this.Ejecutar(registro)>0)
                System.out.println("modifiacion exitosa");
             else
                System.out.println("modificacion fallido");
          }
          catch(Exception e1){
              System.out.println("Ocurrio una excepción "+e1);
          }
          
    }
    
    public ResultSet consultarRegional(){
		ResultSet rs = null;
		try
		{
			String consulta="select * from regional";
			rs= Consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
    
    public ResultSet consultarRegionalCod(Long Cod){
		ResultSet rs = null;
		try
		{
			String consulta="select * from regional where ID_REGIONAL="+Cod+"";
			rs= Consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
    public void eliminarRegional(Long Cod){
        try{
           String registro="delete from regional where ID_REGIONAL="+Cod+"";
           if(this.Ejecutar(registro)>0)
              System.out.println("Eliminacion exitosa");
           else
              System.out.println("Eliminacion fallida");
        }
        catch(Exception e1){
            System.out.println("Ocurrio una excepción "+e1);
        }
        
  }

}
