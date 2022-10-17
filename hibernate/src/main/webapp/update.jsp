<%@page import="hibernate.pruebaDAO"%>
<%@page import="hibernate.prueba"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<% 
			pruebaDAO ses = new pruebaDAO();
			
			int id = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			prueba p = new prueba(nombre,id);
			
		%>
	</body>
</html>