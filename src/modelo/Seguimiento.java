package modelo;

import java.sql.ResultSet;

import enlaceDatos.Conexion;

public class Seguimiento extends Conexion {
	
	private Long Id_Seguimiento;
	private String Fecha_Inicio;
	private String Estado;
	private Long Aprendiz;
	
	public Long getId_Seguimiento() {
		return Id_Seguimiento;
	}
	public void setId_Seguimiento(Long id_Seguimiento) {
		Id_Seguimiento = id_Seguimiento;
	}
	public String getFecha_Inicio() {
		return Fecha_Inicio;
	}
	public void setFecha_Inicio(String fecha_Inicio) {
		Fecha_Inicio = fecha_Inicio;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public Long getAprendiz() {
		return Aprendiz;
	}
	public void setAprendiz(Long aprendiz) {
		Aprendiz = aprendiz;
	}
	
	public boolean insertarSeguimiento(){
		boolean v = false;
		try
		{
			String sentencia= "insert into seguimiento values("+Id_Seguimiento+",'"+Fecha_Inicio+"','"+Estado+"',"+Aprendiz+")";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	public boolean actualizarSeguimiento(){
		boolean v = false;
		try
		{
			String sentencia= "update seguimiento set fecha_inicio_seguimiento='"+Fecha_Inicio+"',estado_seguimiento='"+Estado+"',aprendiz="+Aprendiz+" where id_seguimiento="+Id_Seguimiento+"";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	
	
	 
	 public ResultSet consultarSeguimiento(){
			ResultSet rs = null;
			try
			{
				String consulta="select * from seguimiento";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
		
		public ResultSet consultarSeguimientoD(Long Id_Seguimiento){
			ResultSet rs = null;
			try
			{
				String consulta="select * from seguimiento where id_seguimiento="+Id_Seguimiento+"";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
}
