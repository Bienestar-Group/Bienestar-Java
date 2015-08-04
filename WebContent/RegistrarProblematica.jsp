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
	 <form name="problematica"  method="get" action="ControlProblematica">
	<ul>
		<li>
			<h2>Problematica</h2>
		</li>
		<li>	
			<label for="txnom">Nombre: </label>
			<input type="text" name="txnom" value="" title="Codigo">
		</li>
		<li>
			<label for="txtp">Tipo problematica:</label>
			<input type="text" name="txtp" value="" title="Nombre">
		</li>
		<li>
			<label for="txes">Estado</label>
			<input type="text" name="txes" value="" title="Descripcion" >
		</li>
		<li>
			<label for="txa">Area</label>
			<input type="text" name="txa" value="" title="Descripcion" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnInsertar">Insertar</button>
        </li>
	</ul>
	</form>
	
	<section>
			<%!long Id_Pr;%>
			<%!String Nombre; %>
			<%!String Tipo_Problematica; %>
			<%!String Estado; %>
			<%!long Area; %>
	<%
	
		try{
				ResultSet rs;
				Problematica pro= new Problematica();
	%>
	
	
				<table aling="center" class="table1">
				<tr>
				<th>Id Problematica</th><th>Nombre</th><th>Tipo Problematica</th><th>Estado</th><th>Area</th><th>Actualizar</th><th>Eliminar</th></tr>
				</tr>
				
		<% 
				rs=pro.consultarProblematica();
				while(rs.next()){
					
					Id_Pr=rs.getLong("Id_Problematica");
					Nombre=rs.getString("Nombre_Problematica");
					Tipo_Problematica=rs.getString("Tipo_Problematica");
					Estado=rs.getString("Estado_Problematica");
					Area=rs.getLong("Area");
					
		%>	
					<tr>
						<td><%=Id_Pr%></td>
						<td><%=Nombre%></td>
						<td><%=Tipo_Problematica%></td>
						<td><%=Estado%></td>
						<td><%=Area%></td>
						<td><a class="boton" href="ActualizarProblematica.jsp?aid=<%=Id_Pr%>">Actualizar</a></td>
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
				
	</section>
</body>
</html>