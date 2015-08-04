package modelo;

import java.sql.ResultSet;

import enlaceDatos.Conexion;

public class Problematica extends Conexion{

	private Long Id_Pr;
	private String Nombre;
	private String Tipo_Problematica;
	private String Estado;
	private Long Area;
	
	
	public Long getId_Pr() {
		return Id_Pr;
	}
	public void setId_Pr(Long id_Pr) {
		Id_Pr = id_Pr;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getTipo_Problematica() {
		return Tipo_Problematica;
	}
	public void setTipo_Problematica(String tipo_Problematica) {
		Tipo_Problematica = tipo_Problematica;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public Long getArea() {
		return Area;
	}
	public void setArea(Long area) {
		Area = area;
	}
	
	public boolean insertarProblematica(){
		boolean v = false;
		try
		{
			String sentencia= "insert into problematica values("+Id_Pr+",'"+Nombre+"','"+Tipo_Problematica+"','"+Estado+"',"+Area+")";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	public boolean actualizarProblematica(){
		boolean v = false;
		try
		{
			String sentencia= "update problematica set nombre_problematica='"+Nombre+"',tipo_problematica='"+Tipo_Problematica+"',estado_problematica='"+Estado+"',area="+Area+" where id_problematica="+Id_Pr+"";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	
	
	 
	 public ResultSet consultarProblematica(){
			ResultSet rs = null;
			try
			{
				String consulta="select * from problematica";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
		
		public ResultSet consultarProblematicaD(Long Id_Problematica){
			ResultSet rs = null;
			try
			{
				String consulta="select * from problematica where id_problematica="+Id_Problematica+"";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
}
