package controladorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Profesional;

/**
 * Servlet implementation class ControlProfesional
 */
@WebServlet("/ControlProfesional")
public class ControlProfesional extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlProfesional() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Profesional Objpro=new Profesional();
		
		String Tipo_Documento;
		Long Documento;
		String Nombre;
		String Primer_Apellido;
		String Segundo_Apellido;
		Long Telefono;
		String Email;
		String Direccion;
		String Fecha_Nacimiento;
		String Estado;
		
		if(request.getParameter("btnInsertar")!=null)
		{
		Tipo_Documento=request.getParameter("txtipodoc");
        Documento=Long.parseLong(request.getParameter("txdoc"));
        Nombre=request.getParameter("txnombre");
        Primer_Apellido=request.getParameter("txape1");
        Segundo_Apellido=request.getParameter("txape2");
        Telefono=Long.parseLong(request.getParameter("txtel"));
        Email=request.getParameter("txemail");
        Direccion=request.getParameter("txdir");
        Fecha_Nacimiento=request.getParameter("txfena");
        Estado=request.getParameter("txes");
		
        Objpro.setTipo_Documento(Tipo_Documento);
        Objpro.setDocumento(Documento);
        Objpro.setNombre(Nombre);
        Objpro.setPrimer_Apellido(Primer_Apellido);
        Objpro.setSegundo_Apellido(Segundo_Apellido);
        Objpro.setTelefono(Telefono);
        Objpro.setEmail(Email);
        Objpro.setDireccion(Direccion);
        Objpro.setFecha_Nacimiento(Fecha_Nacimiento);
        Objpro.setEstado(Estado);
        
        if(Objpro.insertarProfesional()!=false)
		{
			response.sendRedirect("RegistrarProfesional.jsp");

		}
        
		}
		else
		{
			if(request.getParameter("btnActualizar")!=null)
			{
				Tipo_Documento=request.getParameter("txtipodoc");
		        Documento=Long.parseLong(request.getParameter("txdoc"));
		        Nombre=request.getParameter("txnombre");
		        Primer_Apellido=request.getParameter("txape1");
		        Segundo_Apellido=request.getParameter("txape2");
		        Telefono=Long.parseLong(request.getParameter("txtel"));
		        Email=request.getParameter("txemail");
		        Direccion=request.getParameter("txdir");
		        Fecha_Nacimiento=request.getParameter("txfena");
		        Estado=request.getParameter("txes");
				
		        Objpro.setTipo_Documento(Tipo_Documento);
		        Objpro.setDocumento(Documento);
		        Objpro.setNombre(Nombre);
		        Objpro.setPrimer_Apellido(Primer_Apellido);
		        Objpro.setSegundo_Apellido(Segundo_Apellido);
		        Objpro.setTelefono(Telefono);
		        Objpro.setEmail(Email);
		        Objpro.setDireccion(Direccion);
		        Objpro.setFecha_Nacimiento(Fecha_Nacimiento);
		        Objpro.setEstado(Estado);
					
				if(Objpro.actualizarProfesional()!=false)
				{
					response.sendRedirect("RegistrarProfesional.jsp");

				}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
