<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="modelo.Problematica"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		Long Id_Pr;
		String Nombre;
		String Tipo_Problematica;
		String Estado;
		Long Area;
	%>
	
	<%
		if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Id_Problematica=Long.parseLong(request.getParameter("aid"));
			Problematica Objse = new Problematica();
			rs= Objse.consultarProblematicaD(Id_Problematica);
			while(rs.next()){
		    	Id_Pr=rs.getLong("Id_Problematica");
				Nombre=rs.getString("Nombre_Problematica");
				Tipo_Problematica=rs.getString("Tipo_problematica");
				Estado=rs.getString("Estado_Problematica");
				Area=rs.getLong("Area");
			}
		}
	%>
	<form name="problematica"  method="get" action="ControlProblematica">
	<ul>
		<li>
			<h2>Problematica</h2>
		</li>
		<li>	
			<label for="txnom">Nombre: </label>
			<input type="text" name="txnom" value="<%=Nombre %>" title="Codigo">
		</li>
		<li>
			<label for="txtp">Tipo problematica:</label>
			<input type="text" name="txtp" value="<%=Tipo_Problematica %>" title="Nombre">
		</li>
		<li>
			<label for="txes">Estado</label>
			<input type="text" name="txes" value="<%=Estado %>" title="Descripcion" >
		</li>
		<li>
			<label for="txa">Area</label>
			<input type="text" name="txa" value="<%=Area %>" title="Descripcion" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnActualizar">Actualizar</button>
        </li>
	</ul>
</body>
</html>