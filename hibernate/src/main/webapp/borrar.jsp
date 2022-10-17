<%@page import="hibernate.pruebaDAO"%>
<%@page import="hibernate.prueba"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>borrar</title>
	</head>
	<body>
		<% 
			pruebaDAO ses = new pruebaDAO();
			prueba p = new prueba();
			int id = Integer.parseInt(request.getParameter("id")); 
			p.setId(id);
		%>
	</body>
</html>