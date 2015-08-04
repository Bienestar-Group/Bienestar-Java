<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="modelo.Profesional"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
		if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Id_P=Long.parseLong(request.getParameter("aid"));
			Profesional ObjPer = new Profesional();
			rs= ObjPer.consultarProfesionalD(Id_P);
			while(rs.next()){
		    	Tipo_Documento=rs.getString("Tipo_Documento_Profesional");
		    	Documento=rs.getLong("Documento_Profesional");
				Nombre=rs.getString("Nombre_Profesional");
				Primer_Apellido=rs.getString("Primer_Apellido_Proefesional");
				Segundo_Apellido=rs.getString("Segundo_Apellido_Profesional");
				Telefono=rs.getLong("Telefono_Profesional");
				Email=rs.getString("Email_Profesional");
				Direccion=rs.getString("Direccion_Profesional");
				Fecha_Nacimiento=rs.getString("Fecha_Nacimiento_Profesional");
				Estado=rs.getString("Estado_Profesional");
			}
		}
	%>
	
	<form name="profesional"  method="get" action="ControlProfesional">
	<ul>
		<li>
			<h2>Profesional</h2>
		</li>
		<li>	
			<label for="txtipodoc">Tipo Documento: </label>
			<input type="text" name="txtipodoc" value="<%=Tipo_Documento %>" title="Documento">
		</li>
		<li>
			<label for="txdoc">Documento:</label>
			<input type="text" name="txdoc" value="<%= Documento%>" title="Nombre">
		</li>
		<li>
			<label for="txnombre">Nombre:</label>
			<input type="text" name="txnombre" value="<%=Nombre %>" title="Apellido" >
		</li>
		<li>
			<label for="txape1">Primer apellido:</label>
			<input type="text" name="txape1" value="<%=Primer_Apellido %>" title="Direccion" >
		</li>
		<li>
			<label for="txape2">Segundo apellido:</label>
			<input type="text" name="txape2" value="<%= Segundo_Apellido%>" title="Email" >
		</li>
		<li>	
			<label for="txtel">Telefono:</label>
			<input type="text" name="txtel" value="<%= Telefono%>" title="Telefono" >
		</li>
		<li>	
			<label for="txemail">Email:</label>
			<input type="text" name="txemail" value="<%=Email %>" title="Email" >
		</li>
		<li>	
			<label for="txdir">Direccion:</label>
			<input type="text" name="txdir" value="<%=Direccion %>" title="Direccion" >
		</li>
		<li>	
			<label for="txfena">Fecha de nacimiento:</label>
			<input type="text" name="txfena" value="<%=Fecha_Nacimiento %>" title="Fecha_Nacimiento" >
		</li>
		<li>	
			<label for="txes">Estado:</label>
			<input type="text" name="txed" value="<%= Estado%>" title="Estado" >
		</li>
		<li>
             <button type="submit" class="boton" name="btnActualizar">Actualizar</button>
        </li>
	</ul>
	</form>
</body>
</html>