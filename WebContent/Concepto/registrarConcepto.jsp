<%@page import="com.modelo.Concepto"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Concepto</title>
</head>
<body>
	<section class="Sec_form">
	
	<form name="persona" class="form_persona" action="#" autocomplete="on" method="POST">
		<h2>Concepto</h2>
		<br>
			<label for="txnom">Nombre:</label>
			<input type="text" name="nombre" value="" title="Nombre">
		<br>
			<label for="txnom">Estado:</label>
			<input type="text" name="estado" value="" title="Estado">
		<br>
			<label for="txape">Area:</label>
			<input type="text" name="area" value="" title="Area" >
		<br>
		<input type="submit" value="Registrar" name="Registrar"/> 	
	</form>
</section>	

<section class="Sec_consulta">
		    <%!long CoCod;%>
	        <%!String CoNom; %>
	        <%!String CoEst; %>
			<%!long CoArea;%>
			<%
			try{
				ResultSet rs;
				Concepto Cons = new Concepto();
				%>
				<table aling="center" border="1">
				<tr>
				<th>Codigo</th><th>Nombre</th><th>Estado</th><th>Area</th><th>Actualizar</th><th>Eliminar</th>
				</tr>
				<% 
				rs=Cons.consultarConcepto();
				while(rs.next()){
					CoCod=rs.getLong("ID_CONCEPTO");
					CoNom=rs.getString("NOMBRE_CONCEPTO");
					CoEst=rs.getString("ESTADO_CONCEPTO");
					CoArea=rs.getLong("AREA");
				%>	
					<tr>
						<td><%=CoCod%></td>
						<td><%=CoNom%></td>
						<td><%=CoEst%></td>
						<td><%=CoArea%></td>
						<td><a class="boton" href="actualizarConcepto.jsp?aid=<%=CoCod%>">Actualizar</a></td>
						<td><a class="boton" href="eliminarConcepto.jsp?id=<%=CoCod%>">Eliminar</a></td></tr>
						
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
            CoEst=request.getParameter("estado");
            CoArea=Long.parseLong(request.getParameter("area"));
      }catch(Exception e){}
           
            %>
        <jsp:useBean id="registroConcepto" class="com.modelo.Concepto" scope="page"/>
            <jsp:setProperty name="registroConcepto" property="nombreConcepto" value="<%= CoNom %>"/>
            <jsp:setProperty name="registroConcepto" property="estadoConcepto" value="<%= CoEst%>"/>
            <jsp:setProperty name="registroConcepto" property="area" value="<%= CoArea %>"/>
            <%
            try{ 
                
            if(request.getParameter("Registrar")!=null)
            {
            	registroConcepto.registrarConcepto();
            	response.sendRedirect("registrarConcepto.jsp");
            }
            }catch(Exception e){
            }
           %>	
</body>
</html>