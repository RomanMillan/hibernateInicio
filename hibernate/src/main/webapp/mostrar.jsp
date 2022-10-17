<%@page import="hibernate.pruebaDAO"%>
<%@page import="hibernate.prueba"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mostrar</title>
	</head>
	<body>
		<%
			pruebaDAO ses = new pruebaDAO();
			
			int id = Integer.parseInt(request.getParameter("id")); 
			prueba p = new prueba();
			p.setId(id);
			
			ses.read(p.getId());
		%>	
	</body>
</html>