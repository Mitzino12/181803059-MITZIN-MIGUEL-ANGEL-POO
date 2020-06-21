<%-- 
    Document   : agregarUsuario
    Created on : 18 jun 2020, 20:58:19
    Author     : izelo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
    stmt = conexion.prepareStatement("INSERT INTO usuario SET usuario=?, password=MD5(?), edad=?");
    stmt.setString(1,request.getParameter("usuario"));
    stmt.setString(2,request.getParameter("password"));
    stmt.setString(3,request.getParameter("edad"));
    stmt.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar usuario</title>
    </head>
    <body>
        <h1 style="text-align:center;color:black" class="text-success">Usuario agregado con exito</h1>
        <br></br>
        <a class="btn btn-primary" href="index.jsp" role="button">Volver al inicio</a>
    </body>
</html>
<%
    }catch(SQLException e){
        out.print(e.getMessage());
    }
%>
