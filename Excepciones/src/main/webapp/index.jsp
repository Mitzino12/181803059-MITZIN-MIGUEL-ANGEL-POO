<%-- 
    Document   : index
    Created on : 1 jun. 2020, 9:09:15
    Author     : izelo
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuario", "t", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuario");
        while (rs.next()) {
            out.println(rs.getString(1));
            out.println(rs.getString(2));
            out.println(rs.getString(3));
        }
    } catch (java.sql.SQLException e) {
        int error = e.getErrorCode();
        if (error == 1146) {
            out.println("Error: " + error + " no existe la tabla");
        } else if (error == 1049) {
            out.println("Error: " + error + " base de datos desconocida");
        } else if (error == 1045) {
            out.println("Error: " + error + " acceso denegado al usuario");
        } else if (error == 0) {
            out.println("Error: " + error + " error de enlace de comunicación con la base de datos");
        } else if (error == 1064) {
            out.println("Error: " + error + " sintaxis SQL erronea");
        }
    }
%>    
<!--Descargar jar 17 o poner el,
Practica 1. base de datos, tabla, md5
Practica 2. como conectar mysql con java-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
