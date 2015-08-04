package modelo;

import enlaceDatos.Conexion;

public class Cita extends Conexion {
	
	private Long Id_Cita;
	private String Fecha;
	private String Hora_Inicio;
	private String Hora_Fin;
	private String Estado;
	private Long Profesional;
	private Long Aprendiz;
	private Long Problematica;
	
	public Long getId_Cita() {
		return Id_Cita;
	}
	public void setId_Cita(Long id_Cita) {
		Id_Cita = id_Cita;
	}
	public String getFecha() {
		return Fecha;
	}
	public void setFecha(String fecha) {
		Fecha = fecha;
	}
	public String getHora_Inicio() {
		return Hora_Inicio;
	}
	public void setHora_Inicio(String hora_Inicio) {
		Hora_Inicio = hora_Inicio;
	}
	public String getHora_Fin() {
		return Hora_Fin;
	}
	public void setHora_Fin(String hora_Fin) {
		Hora_Fin = hora_Fin;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public Long getProfesional() {
		return Profesional;
	}
	public void setProfesional(Long profesional) {
		Profesional = profesional;
	}
	public Long getAprendiz() {
		return Aprendiz;
	}
	public void setAprendiz(Long aprendiz) {
		Aprendiz = aprendiz;
	}
	public Long getProblematica() {
		return Problematica;
	}
	public void setProblematica(Long problematica) {
		Problematica = problematica;
	}
	
	
	public void registrarCita(){
        try{
           String registro="insert into cita values("+Id_Cita+",'"+Fecha+"','"+Hora_Inicio+"','"+Hora_Fin+"','"+Estado+"',"+Profesional+","+Aprendiz+","+Problematica+")";
           ejecutar(registro);
        }
        catch(Exception e1){
            System.out.println("Ocurrio una excepción "+e1);
        }
	
	 }
}
