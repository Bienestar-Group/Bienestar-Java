package controladorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Area;

/**
 * Servlet implementation class ControlArea
 */
@WebServlet("/ControlArea")
public class ControlArea extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlArea() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Area Objar=new Area();
		String Nombre;
		String Descripcion;
		String Estado;
		
		if(request.getParameter("btnInsertar")!=null)
		{
		
        Nombre=request.getParameter("txnombre");
        Descripcion=request.getParameter("txdes");
        Estado=request.getParameter("Estado");
        
      
        Objar.setNombre(Nombre);
        Objar.setDescripcion(Descripcion);
        Objar.setEstado(Estado);
       
        
        if(Objar.insertarArea()!=false)
		{
			response.sendRedirect("RegistrarArea.jsp");

		}
        
		}
		else
		{
			if(request.getParameter("btnActualizar")!=null)
			{
			        Nombre=request.getParameter("txnombre");
			        Descripcion=request.getParameter("txdes");
			        Estado=request.getParameter("txes");
			        
			      
			        Objar.setNombre(Nombre);
			        Objar.setDescripcion(Descripcion);
			        Objar.setEstado(Estado);
			       
					
				if(Objar.actualizarArea()!=false)
				{
					response.sendRedirect("RegistrarArea.jsp");

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
