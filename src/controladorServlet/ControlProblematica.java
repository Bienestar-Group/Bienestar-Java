package controladorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Problematica;

/**
 * Servlet implementation class ControlProblematica
 */
@WebServlet("/ControlProblematica")
public class ControlProblematica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlProblematica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Problematica Objpro=new Problematica();
		
		String Nombre;
		String Tipo_Problematica;
		String Estado;
		Long Area;
		
		if(request.getParameter("btnInsertar")!=null)
		{
		
        Nombre=request.getParameter("txnom");
        Tipo_Problematica=request.getParameter("txtp");
        Estado=request.getParameter("txes");
        Area=Long.parseLong(request.getParameter("txa"));
        
        Objpro.setNombre(Nombre);
        Objpro.setTipo_Problematica(Tipo_Problematica);
        Objpro.setEstado(Estado);
        Objpro.setArea(Area);
       
        
        if(Objpro.insertarProblematica()!=false)
		{
			response.sendRedirect("RegistrarProblematica.jsp");

		}
        
		}
		
		else if(request.getParameter("btnActualizar")!=null)
			{
		        Nombre=request.getParameter("txnom");
		        Tipo_Problematica=request.getParameter("txtp");
		        Estado=request.getParameter("txes");
		        Area=Long.parseLong(request.getParameter("txa"));
		        
		        Objpro.setNombre(Nombre);
		        Objpro.setTipo_Problematica(Tipo_Problematica);
		        Objpro.setEstado(Estado);
		        Objpro.setArea(Area);
		       
			       
					
				if(Objpro.actualizarProblematica()!=false)
				{
					response.sendRedirect("RegistrarProblematica.jsp");

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
