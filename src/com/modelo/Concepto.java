package com.modelo;

import java.sql.ResultSet;

import com.enlaceDatos.Conexion;

public class Concepto extends Conexion {
	
	//declaracion de atributos o datos miembros de la clase concpeto
	private long idConcpeto;
	private String nombreConcepto;
	private String estadoConcepto;
	private long area;
	
	//encapsulamiento de datos miembro 
	
	public long getIdConcpeto() {
		return idConcpeto;
	}

	public void setIdConcpeto(long idConcpeto) {
		this.idConcpeto = idConcpeto;
	}

	public String getNombreConcepto() {
		return nombreConcepto;
	}

	public void setNombreConcepto(String nombreConcepto) {
		this.nombreConcepto = nombreConcepto;
	}

	public String getEstadoConcepto() {
		return estadoConcepto;
	}

	public void setEstadoConcepto(String estadoConcepto) {
		this.estadoConcepto = estadoConcepto;
	}

	public long getArea() {
		return area;
	}

	public void setArea(long area) {
		this.area = area;
	}
	
	  public void registrarConcepto(){
          try{
             String registro="insert into concepto values(null,'"+this.nombreConcepto+"','"+this.estadoConcepto+"',"+this.area+")";
             if(this.Ejecutar(registro)>0)
                System.out.println("registro exitoso");
             else
                System.out.println("registro fallido");
          }
          catch(Exception e1){
              System.out.println("Ocurrio una excepción "+e1);
          }
          
    }
    
    public void modificarConcepto(){
          try{
             String registro="update concepto set NOMBRE_CONCEPTO='"+this.nombreConcepto+"', ESTADO_CONCEPTO='"+ this.estadoConcepto +"',AREA="+this.area+" where ID_CONCEPTO='"+this.idConcpeto+"'";
             if(this.Ejecutar(registro)>0)
                System.out.println("modifiacion exitosa");
             else
                System.out.println("modificacion fallido");
          }
          catch(Exception e1){
              System.out.println("Ocurrio una excepción "+e1);
          }
          
    }
    
    public ResultSet consultarConcepto(){
		ResultSet rs = null;
		try
		{
			String consulta="select * from concepto";
			rs= Consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
    
    public ResultSet consultarConcpetoCod(Long Cod){
		ResultSet rs = null;
		try
		{
			String consulta="select * from concepto where ID_CONCEPTO="+Cod+"";
			rs= Consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
    public void eliminarConcepto(Long Cod){
        try{
           String registro="delete from concepto where ID_CONCEPTO="+Cod+"";
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
