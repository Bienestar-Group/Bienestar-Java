<%@page import="com.modelo.Regional"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regional</title>
</head>
<body>
	<%
		if (Long.parseLong(request.getParameter("id"))!=0)
		{
			Long Cod=Long.parseLong(request.getParameter("id"));
			Regional ObjRe = new Regional();
			ObjRe.eliminarRegional(Cod);
			response.sendRedirect("registrarRegional.jsp");
		}
	%>
</body>
</html>