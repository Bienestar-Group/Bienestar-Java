package controladorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Seguimiento;

/**
 * Servlet implementation class ControlSeguimiento
 */
@WebServlet("/ControlSeguimiento")
public class ControlSeguimiento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlSeguimiento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Seguimiento Objse=new Seguimiento();
		
		String Fecha_Inicio;
		String Estado;
		Long Aprendiz;
		
		if(request.getParameter("btnInsertar")!=null)
		{

	        Fecha_Inicio=request.getParameter("txfe");
	        Estado=request.getParameter("txes");
	        Aprendiz=Long.parseLong(request.getParameter("txap"));
	       
	        Objse.setFecha_Inicio(Fecha_Inicio);
	        Objse.setEstado(Estado);
	        Objse.setAprendiz(Aprendiz);
       
        
        if(Objse.insertarSeguimiento()!=false)
		{
			response.sendRedirect("RegistrarSeguimiento.jsp");

		}
        
		}
		else
		{
			if(request.getParameter("btnActualizar")!=null)
			{
				
				Fecha_Inicio=request.getParameter("txfe");
		        Estado=request.getParameter("txes");
		        Aprendiz=Long.parseLong(request.getParameter("txap"));
		       
		        Objse.setFecha_Inicio(Fecha_Inicio);
		        Objse.setEstado(Estado);
		        Objse.setAprendiz(Aprendiz);
			       
					
				if(Objse.actualizarSeguimiento()!=false)
				{
					response.sendRedirect("RegistrarSeguimiento.jsp");

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
