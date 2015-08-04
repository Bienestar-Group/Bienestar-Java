<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Profesional"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section>
	
	<form name="profesional"  method="get" action="ControlProfesional">
	<ul>
		<li>
			<h2>Profesional</h2>
		</li>
		<li>	
			<label for="txtipodoc">Tipo Documento: </label>
			<input type="text" name="txtipodoc" value="" title="Documento">
		</li>
		<li>
			<label for="txdoc">Documento:</label>
			<input type="text" name="txdoc" value="" title="Nombre">
		</li>
		<li>
			<label for="txnombre">Nombre:</label>
			<input type="text" name="txnombre" value="" title="Apellido" >
		</li>
		<li>
			<label for="txape1">Primer apellido:</label>
			<input type="text" name="txape1" value="" title="Direccion" >
		</li>
		<li>
			<label for="txape2">Segundo apellido:</label>
			<input type="text" name="txape2" value="" title="Email" >
		</li>
		<li>	
			<label for="txtel">Telefono:</label>
			<input type="text" name="txtel" value="" title="Telefono" >
		</li>
		<li>	
			<label for="txemail">Email:</label>
			<input type="text" name="txemail" value="" title="Email" >
		</li>
		<li>	
			<label for="txdir">Direccion:</label>
			<input type="text" name="txdir" value="" title="Direccion" >
		</li>
		<li>	
			<label for="txfena">Fecha de nacimiento:</label>
			<input type="text" name="txfena" value="" title="Fecha_Nacimiento" >
		</li>
		<li>	
			<label for="txes">Estado:</label>
			<input type="text" name="txed" value="" title="Estado" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnInsertar">Insertar</button>
        </li>
	</ul>
	</form>
  </section>	

	<%!
		Long Id_P;
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

	%>
	<% 
	try{
				ResultSet rs;
				Profesional Pro = new Profesional();
				%>
	
	<table aling="center" class="table1">
				<tr>
				<th>Tipo Documento</th><th>Documento</th><th>Nombre</th><th>Primer_Apellido</th><th>Segundo_Apellido</th><th>Telefono</th><th>Email</th><th>Direccion</th><th>Fecha_Nacimiento</th><th>Estado</th><th>Actualizar</th><th>Eliminar</th>
				</tr>
				<% 
				rs=Pro.consultarProfesional();
				while(rs.next()){
					
					Id_P=rs.getLong("Id_Profesional");
					Tipo_Documento=rs.getString("Tipo_documento_profesional");
					Documento=rs.getLong("Documento_profesional");
					Nombre=rs.getString("Nombre_profesional");
					Primer_Apellido=rs.getString("Primer_Apellido_profesional");
					Segundo_Apellido=rs.getString("Segundo_Apellido_profesional");
					Telefono=rs.getLong("Telefono_Profesional");
					Email=rs.getString("Email_Profesional");
					Direccion=rs.getString("Direccion_Profesional");
					Fecha_Nacimiento=rs.getString("Fecha_Nacimiento_Profesional");
					Estado=rs.getString("Estado_Profesional");
				%>	
					<tr>
						<td><%=Id_P%></td>
						<td><%=Tipo_Documento%></td>
						<td><%=Documento%></td>
						<td><%=Nombre%></td>
						<td><%=Primer_Apellido%></td>
						<td><%=Segundo_Apellido%></td>
						<td><%=Telefono%></td>
						<td><%=Email%></td>
						<td><%=Direccion%></td>
						<td><%=Fecha_Nacimiento%></td>
						<td><%=Estado%></td>
						<td><a class="boton" href="ActualizarProfesional.jsp?aid=<%=Id_P%>">Actualizar</a></td>
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