<%-- 
    Document   : cambiaContra
    Created on : 29 jun 2020, 21:51:28
    Author     : izelo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection conexion = null;
    PreparedStatement stmt= null;
    ResultSet rs= null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ","root","");
        stmt = conexion.prepareStatement("UPDATE usuario SET password=md5(?) WHERE id_usuario=?");
        stmt.setString(1, request.getParameter("password"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario")));
        
        //rs = stmt.executeQuery();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Editar contraseña</title>
    </head>
    <body>
        <%
            if (stmt.executeUpdate() == 1) {
        %>
        <div class="alert alert-success" colspan="2">
            <h2>Se cambio la contraseña exitosamente</h2>
        </div>
        <%
                } 
            } catch (Exception e) {
                //out.println(e.getMessage());
        %>
            <div class="alert alert-danger" colspan="2">
               <h2>Ocurrio un error</h2>
            </div>
        <%
            }
        %>  
        <div>
           <a class="btn btn-info btn-black" href="index.jsp">Regresar</a>
        </div>
    </body>
</html>