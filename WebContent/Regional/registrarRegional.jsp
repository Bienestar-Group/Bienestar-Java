<%@page import="com.modelo.Regional"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regional</title>
</head>
<body>
	<section class="Sec_form">
	
	<form name="persona" class="form_persona" action="#" autocomplete="on" method="POST">
		<h2>Regional</h2>
		<br>
			<label for="txnom">Nombre:</label>
			<input type="text" name="nombre" value="" title="Nombre">
		<br>
			<label for="txnom">Direcci&oacute;n:</label>
			<input type="text" name="direccion" value="" title="Direccion">
		<br>
			<label for="txnom">Telefono:</label>
			<input type="text" name="telefono" value="" title="Telefono">
		<br>
			<label for="txnom">PBX:</label>
			<input type="text" name="pbx" value="" title="PBX">
		<br>
			<label for="txnom">Director:</label>
			<input type="text" name="director" value="" title="Director">
		<br>
			<label for="txnom">Telefono Director:</label>
			<input type="text" name="telefonoDirector" value="" title="Telefono Director">
		<br>
			<label for="txape">Estado:</label>
			<input type="text" name="estado" value="" title="Estado" >
		<br>
		<input type="submit" value="Registrar" name="Registrar"/> 	
	</form>
</section>	

<section class="Sec_consulta">
		    <%!long CoCod;%>
	        <%!String CoNom; %>
	        <%!String CoDireccion; %>
			<%!long CoTel;%>
			<%!long CoPBX;%>
			<%!String CoDir; %>
			<%!long CoTelDir;%>
			<%!String CoEst; %>
			<%
			try{
				ResultSet rs;
				Regional Cons = new Regional();
				%>
				<table aling="center" border="1">
				<tr>
				<th>Codigo</th><th>Nombre</th><th>Direccion</th><th>Telefono</th><th>PBX</th><th>Director</th><th>Telefono Director</th><th>Estado</th><th>Actualizar</th><th>Eliminar</th>
				</tr>
				<% 
				rs=Cons.consultarRegional();
				while(rs.next()){
					CoCod=rs.getLong("ID_REGIONAL");
					CoNom=rs.getString("NOMBRE_REGIONAL");
					CoDireccion=rs.getString("DIRECCION_REGIONAL");
					CoTel=rs.getLong("TELEFONO_REGIONAL");
					CoPBX=rs.getLong("PBX_REGIONAL");
					CoDir=rs.getString("DIRECTOR_REGIONAL");
					CoTelDir=rs.getLong("TELEFONO_DIRECTOR");
					CoEst=rs.getString("ESTADO_REGIONAL");
				%>	
					<tr>
						<td><%=CoCod%></td>
						<td><%=CoNom%></td>
						<td><%=CoDireccion%></td>
						<td><%=CoTel%></td>
						<td><%=CoPBX%></td>
						<td><%=CoDir%></td>
						<td><%=CoTelDir%></td>
						<td><%=CoEst%></td>
						<td><a class="boton" href="actualizarRegional.jsp?aid=<%=CoCod%>">Actualizar</a></td>
						<td><a class="boton" href="eliminarRegional.jsp?id=<%=CoCod%>">Eliminar</a></td></tr>
						
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
	 <%
      try{
            CoNom=request.getParameter("nombre");
            CoDireccion=request.getParameter("direccion");
            CoTel=Long.parseLong(request.getParameter("telefono"));
            CoPBX=Long.parseLong(request.getParameter("pbx"));
            CoDir=request.getParameter("director");
            CoTelDir=Long.parseLong(request.getParameter("telefonoDirector"));
            CoEst=request.getParameter("estado");
      }catch(Exception e){}
           
            %>
        <jsp:useBean id="registroRegional" class="com.modelo.Regional" scope="page"/>
            <jsp:setProperty name="registroRegional" property="nombreRegional" value="<%= CoNom %>"/>
            <jsp:setProperty name="registroRegional" property="direccionRegional" value="<%= CoDireccion %>"/>
            <jsp:setProperty name="registroRegional" property="telefonoRegional" value="<%= CoTel %>"/>
            <jsp:setProperty name="registroRegional" property="pbxRegional" value="<%= CoPBX %>"/>
            <jsp:setProperty name="registroRegional" property="directorRegional" value="<%= CoDir %>"/>
            <jsp:setProperty name="registroRegional" property="telefonoDirector" value="<%= CoTelDir %>"/>
            <jsp:setProperty name="registroRegional" property="estadoRegional" value="<%= CoEst%>"/>
            <%
            try{ 
                
            if(request.getParameter("Registrar")!=null)
            {
            	registroRegional.registrarRegional();
            	response.sendRedirect("registrarRegional.jsp");
            }
            }catch(Exception e){
            }
           %>	
</body>
</html>