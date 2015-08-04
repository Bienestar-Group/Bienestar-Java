package modelo;
import java.sql.ResultSet;

import enlaceDatos.Conexion;

public class Profesional extends Conexion {
	  
	
	private String Tipo_Documento;
	private Long Documento;
	private String Nombre;
	private String Primer_Apellido;
	private String Segundo_Apellido;
	private Long Telefono;
	private String Email;
	private String Direccion;
	private String Fecha_Nacimiento;
	private String Estado;
	private Long Id_P;
	
	public String getFecha_Nacimiento() {
		return Fecha_Nacimiento;
	}
	public void setFecha_Nacimiento(String fecha_Nacimiento) {
		Fecha_Nacimiento = fecha_Nacimiento;
	}
	
	public Long getId_P() {
		return Id_P;
	}
	public void setId_P(Long id_P) {
		Id_P = id_P;
	}
	public String getTipo_Documento() {
		return Tipo_Documento;
	}
	public void setTipo_Documento(String tipo_Documento) {
		Tipo_Documento = tipo_Documento;
	}
	public Long getDocumento() {
		return Documento;
	}
	public void setDocumento(Long documento) {
		Documento = documento;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getPrimer_Apellido() {
		return Primer_Apellido;
	}
	public void setPrimer_Apellido(String primer_Apellido) {
		Primer_Apellido = primer_Apellido;
	}
	public String getSegundo_Apellido() {
		return Segundo_Apellido;
	}
	public void setSegundo_Apellido(String segundo_Apellido) {
		Segundo_Apellido = segundo_Apellido;
	}
	public Long getTelefono() {
		return Telefono;
	}
	public void setTelefono(Long telefono) {
		Telefono = telefono;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}

	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}

	
	
	public ResultSet consultarProfesional(){
		ResultSet rs = null;
		try
		{
			String consulta="select * from profesional";
			rs= consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet consultarProfesionalD(Long Id_P){
		ResultSet rs = null;
		try
		{
			String consulta="select * from profesional where documento="+Id_P+"";
			rs= consultar(consulta);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public boolean insertarProfesional(){
		boolean v = false;
		try
		{
			String sentencia="insert into profesional values("+Id_P+",'"+Tipo_Documento+"',"+Documento+",'"+Nombre+"','"+Primer_Apellido+"','"+Segundo_Apellido+"',"+Telefono+",'"+Email+"','"+Direccion+"','"+Fecha_Nacimiento+"','"+Estado+"')";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}

	public boolean actualizarProfesional(){
		boolean v = false;
		try
		{
			String sentencia="update profesional set Tipo_Documento_Profesional='"+Tipo_Documento+"',Documento_Profesional="+Documento+",Nombre_Profesional='"+Nombre+"',Primer_Apellido_Profesional='"+Primer_Apellido+"',Segundo_Apellido_Profesional='"+Segundo_Apellido+"',Telefono_Profesional="+Telefono+",Email_Profesional='"+Email+"',Direccion_Profesional='"+Direccion+"',Fecha_Nacimiento_Profesioanal='"+Fecha_Nacimiento+"',Estado_Profesional='"+Estado+"' where Id_Profesional="+Id_P+"";
            ejecutar(sentencia);
			v=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return v;
	}
}
