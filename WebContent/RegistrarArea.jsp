<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Area"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<section>
	
	<form name="area"  method="get" action="ControlArea">
	<ul>
		<li>
			<h2>Area</h2>
		</li>
		<li>	
			<label for="txcod">Codigo: </label>
			<input type="text" name="txcod" value="" title="Codigo">
		</li>
		<li>
			<label for="txnombre">Nombre:</label>
			<input type="text" name="txnombre" value="" title="Nombre">
		</li>
		<li>
			<label for="txdes">Descripcion</label>
			<input type="text" name="txdes" value="" title="Descripcion" >
		</li>
		<li>
			<label for="txes">Estado:</label>
			<input type="text" name="txes" value="" title="Estado" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnInsertar">Insertar</button>
        </li>
	</ul>
	</form>
</section>	

	<%!
		Long Codigo;
		String Nombre;
		String Descripcion;
		String Estado;
	%>
	<%
	
		try{
				ResultSet rs;
				Area Are= new Area();
	%>
	
	
	<table aling="center" class="table1">
				<tr>
				<th>Codigo</th><th>Nombre</th><th>Descripcion</th><th>Estado</th><th>Actualizar</th>
				</tr>
				
		<% 
				rs=Are.consultarArea();
				while(rs.next()){
					
					Codigo=rs.getLong("Codigo_Area");
					Nombre=rs.getString("Nombre_area");
					Descripcion=rs.getString("Descripcion_area");
					Estado=rs.getString("Estado_area");
					
				%>	
					<tr>
						<td><%=Codigo%></td>
						<td><%=Nombre%></td>
						<td><%=Descripcion%></td>
						<td><%=Estado%></td>
						
						<td><a class="boton" href="ActualizarArea.jsp?aid=<%=Codigo%>">Actualizar</a></td>
				</tr>
				<% 		
				}
				%>
				</table>
				<%
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				%>
</body>
</html>