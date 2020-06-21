<%-- 
    Document   : editaContraseña
    Created on : 19 jun 2020, 19:30:19
    Author     : izelo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if ((request.getParameter("passdb").equals(request.getParameter("passworda"))) && (request.getParameter("password").equals(request.getParameter("passwordc")))) {
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("UPDATE usuario SET password=MD5(?) WHERE id_usuario=?");
            stmt.setString(1, request.getParameter("password"));
            stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario")));
            stmt.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Actualizar usuario</title>
    </head>
    <body>
        <h1 style="text-align:center;color:black" class="text-success">La contraseña del usuario se actualizo con exito</h1>
        <br></br>
        <a class="btn btn-primary" href="index.jsp" role="button">Volver al inicio</a>
        <%
                } catch (SQLException e) {
                    out.print(e.getMessage());
                }
            }%><%else {%>
        <h1 style="text-align:center;color:black" class="text-success">Hubo un error al actualizar la contraseña</h1>
        <a class="btn btn-primary" href="index.jsp" role="button">Volver al inicio</a>
        <a class="btn btn-primary" href="formularioEditaContra.jsp" role="button">Intentar de nuevo</a>
    </body>
</html
<%}%>


