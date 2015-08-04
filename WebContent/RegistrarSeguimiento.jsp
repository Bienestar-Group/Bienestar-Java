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
	 <form name="seguimiento"  method="get" action="ControlSeguimiento">
	<ul>
		<li>
			<h2>Seguimiento</h2>
		</li>
		<li>	
			<label for="txfe">Fecha inicio: </label>
			<input type="text" name="txfe" value="" title="Codigo">
		</li>
		<li>
			<label for="txes">Estado:</label>
			<input type="text" name="txes" value="" title="Nombre">
		</li>
		<li>
			<label for="txap">Aprendiz</label>
			<input type="text" name="txap" value="" title="Descripcion" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnInsertar">Insertar</button>
        </li>
	</ul>

	<%!
		Long Id_Seguimiento;
		String Fecha_Ini;
		String Estado;
		Long Aprendiz;
	%>
	<%
	
		try{
				ResultSet rs;
				Seguimiento Se= new Seguimiento();
	%>
	
	
	<table aling="center" class="table1">
				<tr>
				<th>Id_Seguimiento</th><th>Fecha_Inicio</th><th>Estado</th><th>Aprendiz</th><th>Actualizar</th></tr>
				</tr>
				
		<% 
				rs=Se.consultarSeguimiento();
				while(rs.next()){
					
					Id_Seguimiento=rs.getLong("Id_Seguimiento");
					Fecha_Ini=rs.getString("Fecha_Inicio_Seguimiento");
					Estado=rs.getString("Estado_Seguimiento");
					Aprendiz=rs.getLong("Aprendiz");
					
				%>	
					<tr>
						<td><%=Id_Seguimiento%></td>
						<td><%=Fecha_Ini%></td>
						<td><%=Estado%></td>
						<td><%=Aprendiz%></td>
						<td><a class="boton" href="ActualizarSeguimiento.jsp?aid=<%=Id_Seguimiento%>">Actualizar</a></td>
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