<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="modelo.Seguimiento"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		Long Id_Seguimiento;
		String Fecha_Inicio;
		String Estado;
		Long Aprendiz;
	%>
	
	<%
		if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Id_Seguimiento=Long.parseLong(request.getParameter("aid"));
			Seguimiento Objse = new Seguimiento();
			rs= Objse.consultarSeguimientoD(Id_Seguimiento);
			while(rs.next()){
		    	Id_Seguimiento=rs.getLong("Id_Seguimiento");
				Fecha_Inicio=rs.getString("Fecha_Inicio_Seguimiento");
				Estado=rs.getString("Estado_Seguimiento");
				Aprendiz=rs.getLong("Aprendiz");
			}
		}
	%>
	
	 <form name="seguimiento"  method="get" action="ControlSeguimiento">
	<ul>
		<li>
			<h2>Area</h2>
		</li>
		<li>	
			<label for="txfe">Fecha inicio: </label>
			<input type="text" name="txfe" value="<%=Fecha_Inicio %>" title="FechaInicio">
		</li>
		<li>
			<label for="txes">Estado:</label>
			<input type="text" name="txes" value="<%=Estado %>" title="Esatdo">
		</li>
		<li>
			<label for="txap">Aprendiz</label>
			<input type="text" name="txap" value="<%=Aprendiz %>" title="Aprendiz" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnActualizar">Actualizar</button>
        </li>
	</ul>
	</form>
</body>
</html>