<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="modelo.Area"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		Long Codigo;
		String Nombre;
		String Descripcion;
		String Estado;
	%>
	
	<%
		if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Codigo=Long.parseLong(request.getParameter("aid"));
			Area ObjPer = new Area();
			rs= ObjPer.consultarAreaD(Codigo);
			while(rs.next()){
		    	Codigo=rs.getLong("Codigo_Area");
				Nombre=rs.getString("Nombre_Area");
				Descripcion=rs.getString("Descripcion_Area");
				Estado=rs.getString("Estado_area");
			}
		}
	%>
	
	<form name="area"  method="get" action="ControlArea">
	<ul>
		<li>
			<h2>Area</h2>
		</li>
		<li>	
			<label for="txcod">Codigo: </label>
			<input type="text" name="txcod" value="<%=Codigo %>" title="Codigo">
		</li>
		<li>
			<label for="txnombre">Nombre:</label>
			<input type="text" name="txnombre" value="<%=Nombre %>" title="Nombre">
		</li>
		<li>
			<label for="txdes">Descripcion</label>
			<input type="text" name="txdes" value="<%=Descripcion%>" title="Descripcion" >
		</li>
		<li>
			<label for="txes">Estado:</label>
			<input type="text" name="txes" value="<%=Estado%>" title="Estado" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnActualizar">Actualizar</button>
        </li>
	</ul>
	</form>
</body>
</html>