<%@page import="hibernate.pruebaDAO"%>
<%@page import="hibernate.prueba"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Añadir</title>
	</head>
	<body>
		<%
			pruebaDAO ses = new pruebaDAO();
			
			int id = Integer.parseInt(request.getParameter("id")); 
			String nombre = request.getParameter("nombre");
			
			prueba p = new prueba(nombre,id);
			ses.add(p);
		%>
	</body>
</html>