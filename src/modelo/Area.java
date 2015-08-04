package modelo;

import java.sql.ResultSet;

import enlaceDatos.Conexion;

public class Area extends Conexion{
	
	private Long Codigo;
	public Long getCodigo() {
		return Codigo;
	}
	public void setCodigo(Long codigo) {
		Codigo = codigo;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	private String Nombre;
	private String Descripcion;
	private String Estado;
	
	public boolean insertarArea(){
		boolean v = false;
		try
		{
			String sentencia= "insert into area values("+Codigo+",'"+Nombre+"','"+Descripcion+"','"+Estado+"')";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	public boolean actualizarArea(){
		boolean v = false;
		try
		{
			String sentencia= "update area set nombre_area='"+Nombre+"',descripcion_area='"+Descripcion+"',estado_area='"+Estado+"' where codigo_area="+Codigo+"";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
	
	
	 
	 public ResultSet consultarArea(){
			ResultSet rs = null;
			try
			{
				String consulta="select * from area";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
		
		public ResultSet consultarAreaD(Long Codigo){
			ResultSet rs = null;
			try
			{
				String consulta="select * from area where codigo_area="+Codigo+"";
				rs= consultar(consulta);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		}
	
}
