<%-- 
    Document   : agregarUsuario
    Created on : 18 jun 2020, 20:58:19
    Author     : izelo
--%>
<%@page import="formularios.UsuarioDb"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%      int edad = Integer.parseInt(request.getParameter("edad"));
        UsuarioDb user = new UsuarioDb();
        user.agregaUsuario(request.getParameter("usuario"), request.getParameter("password"), edad);%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar usuario</title>
    </head>
    <body>
        <h1 style="text-align:center;color:blue" class="text-success">Usuario agregado con exito</h1>
        <br></br>
        <a class="btn btn-primary" href="index.jsp" role="button">Volver al inicio</a>
    </body>
</html>