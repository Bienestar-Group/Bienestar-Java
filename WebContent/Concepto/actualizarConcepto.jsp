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
	<%!long ACod;%>
	<%!String ANom; %>
	<%!String AEst;%>
	<%!long Aarea; %>
	<%
		if (Long.parseLong(request.getParameter("aid"))!=0)
		{
			ResultSet rs;
			Long Cod=Long.parseLong(request.getParameter("aid"));
			Concepto ObjCon = new Concepto();
			rs= ObjCon.consultarConcpetoCod(Cod);
			while(rs.next()){
				ACod=rs.getLong("ID_CONCEPTO");
				ANom=rs.getString("NOMBRE_CONCEPTO");
				AEst=rs.getString("ESTADO_CONCEPTO");
				Aarea=rs.getLong("AREA");
			}
		}
	%>
	<section class="Sec_form">
	
	<form name="persona" class="form_persona" action="#" autocomplete="on" method="POST">
		<h2>Concepto</h2>
		<br>
			<label for="txnom">Codigo:</label>
			<input type="text" name="id" value="<%=ACod %>" title="Nombre">
		<br>
			<label for="txnom">Nombre:</label>
			<input type="text" name="nombre" value="<%=ANom %>" title="Nombre">
		<br>
			<label for="txnom">Estado:</label>
			<input type="text" name="estado" value="<%=AEst %>" title="Estado">
		<br>
			<label for="txape">Area:</label>
			<input type="text" name="area" value="<%=Aarea %>" title="Area" >
		<br>
			<input type="submit" value="Actualizar" name="Actualizar"/> 	
	</form>
</section>	
 			<%!long CoCod;%>
	        <%!String CoNom; %>
	        <%!String CoEst; %>
			<%!long CoArea;%>
			
			<%
      		try{
      			CoCod=Long.parseLong(request.getParameter("id"));
            	CoNom=request.getParameter("nombre");
            	CoEst=request.getParameter("estado");
            	CoArea=Long.parseLong(request.getParameter("area"));
      		}catch(Exception e){}
           
            %>
       	 	<jsp:useBean id="actualizarConcepto" class="com.modelo.Concepto" scope="page"/>
       	 	<jsp:setProperty name="actualizarConcepto" property="idConcpeto" value="<%= CoCod %>"/>
            <jsp:setProperty name="actualizarConcepto" property="nombreConcepto" value="<%= CoNom %>"/>
            <jsp:setProperty name="actualizarConcepto" property="estadoConcepto" value="<%= CoEst%>"/>
            <jsp:setProperty name="actualizarConcepto" property="area" value="<%= CoArea %>"/>
            <%
            try{ 
                
            if(request.getParameter("Actualizar")!=null)
            {
            	actualizarConcepto.modificarConcepto();
            	response.sendRedirect("registrarConcepto.jsp");
            }
            }catch(Exception e){
            }
           %>	
</body>
</html>