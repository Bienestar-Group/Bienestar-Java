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
	 <%!long ACod;%>
	 <%!String ANom; %>
	 <%!String ADireccion; %>
	 <%!long ATel;%>
	 <%!long APBX;%>
	 <%!String ADir; %>
	 <%!long ATelDir;%>
	 <%!String AEst; %>
	 <% 
	 if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Cod=Long.parseLong(request.getParameter("aid"));
			Regional ObjRe = new Regional();
			rs= ObjRe.consultarRegionalCod(Cod);
			while(rs.next()){
				ACod=rs.getLong("ID_REGIONAL");
				ANom=rs.getString("NOMBRE_REGIONAL");
				ADireccion=rs.getString("DIRECCION_REGIONAL");
				ATel=rs.getLong("TELEFONO_REGIONAL");
				APBX=rs.getLong("PBX_REGIONAL");
				ADir=rs.getString("DIRECTOR_REGIONAL");
				ATelDir=rs.getLong("TELEFONO_DIRECTOR");
				AEst=rs.getString("ESTADO_REGIONAL");
			}
		}
	 %>
	 	<section class="Sec_form">
	
	<form name="persona" class="form_persona" action="#" autocomplete="on" method="POST">
		<h2>Regional</h2>
		<br>
			<label for="txnom">Codigo:</label>
			<input type="text" name="codigo" value="<%=ACod %>" title="Codigo">
		<br>
			<label for="txnom">Nombre:</label>
			<input type="text" name="nombre" value="<%=ANom %>" title="Nombre">
		<br>
			<label for="txnom">Direcci&oacute;n:</label>
			<input type="text" name="direccion" value="<%=ADireccion %>" title="Direccion">
		<br>
			<label for="txnom">Telefono:</label>
			<input type="text" name="telefono" value="<%=ATel %>" title="Telefono">
		<br>
			<label for="txnom">PBX:</label>
			<input type="text" name="pbx" value="<%=APBX %>" title="PBX">
		<br>
			<label for="txnom">Director:</label>
			<input type="text" name="director" value="<%=ADir %>" title="Director">
		<br>
			<label for="txnom">Telefono Director:</label>
			<input type="text" name="telefonoDirector" value="<%=ATelDir %>" title="Telefono Director">
		<br>
			<label for="txape">Estado:</label>
			<input type="text" name="estado" value="<%=AEst %>" title="Estado" >
		<br>
		<input type="submit" value="Actualizar" name="Actualizar"/> 	 	
	</form>
</section>
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
    	  	CoCod=Long.parseLong(request.getParameter("codigo"));
            CoNom=request.getParameter("nombre");
            CoDireccion=request.getParameter("direccion");
            CoTel=Long.parseLong(request.getParameter("telefono"));
            CoPBX=Long.parseLong(request.getParameter("pbx"));
            CoDir=request.getParameter("director");
            CoTelDir=Long.parseLong(request.getParameter("telefonoDirector"));
            CoEst=request.getParameter("estado");
      }catch(Exception e){}
           
            %>
        <jsp:useBean id="actualizarRegional" class="com.modelo.Regional" scope="page"/>
        	<jsp:setProperty name="actualizarRegional" property="idRegional" value="<%= CoCod %>"/>
            <jsp:setProperty name="actualizarRegional" property="nombreRegional" value="<%= CoNom %>"/>
            <jsp:setProperty name="actualizarRegional" property="direccionRegional" value="<%= CoDireccion %>"/>
            <jsp:setProperty name="actualizarRegional" property="telefonoRegional" value="<%= CoTel %>"/>
            <jsp:setProperty name="actualizarRegional" property="pbxRegional" value="<%= CoPBX %>"/>
            <jsp:setProperty name="actualizarRegional" property="directorRegional" value="<%= CoDir %>"/>
            <jsp:setProperty name="actualizarRegional" property="telefonoDirector" value="<%= CoTelDir %>"/>
            <jsp:setProperty name="actualizarRegional" property="estadoRegional" value="<%= CoEst%>"/>
            <%
            try{ 
                
            if(request.getParameter("Actualizar")!=null)
            {
            	actualizarRegional.modificarRegional();
            	response.sendRedirect("registrarRegional.jsp");
            }
            }catch(Exception e){
            }
           %>	
</body>
</html>