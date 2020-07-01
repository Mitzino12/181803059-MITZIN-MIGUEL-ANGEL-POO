<%-- 
    Document   : editaContraseña
    Created on : 19 jun 2020, 19:30:19
    Author     : izelo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Cambio de contraseña</title>
    </head>
    <body>
        <br>
        <%
            String usuario = "", pass = "";
            String clave1 = "", clave2 = "";
            int id = 0;
            if (request.getParameter("password") != null && request.getParameter("id_usuario") != null) {
                id = Integer.parseInt(request.getParameter("id_usuario"));
                pass = request.getParameter("password");
                Connection conexion = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                    stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=?");
                    stmt.setInt(1, id);
                    stmt.setString(2, pass);
                    rs = stmt.executeQuery();
                    rs.next();
                    usuario = rs.getString("nombre");
                    int nId = Integer.parseInt(request.getParameter("id_usuario"));

                    if (request.getParameter("pass1") != null && request.getParameter("pass2") != null) {
                        clave1 = request.getParameter("pass1");
                        clave2 = request.getParameter("pass2");
                        if (clave1.equals(clave2)) {
        %>
        <div class="alert alert-info">
            <label>Hola <%=usuario%></label>
            <lebel>Seguro que quieres cambiar tu contraseña?</lebel>
        </div>
        <form action="cambiaContra.jsp" class="form">
            <input type="hidden" value="<%=clave1%>" class="form-control" name="password" />
            <input type="hidden" value="<%=nId%>" class="form-control" name="id" />
            <div class="form-group">
                <input type="submit" class="btn btn-success btn-black"  value="Cambiar"/>
                <a class="btn btn-danger btn-black" href="index.jsp">Cancelar</a>
            </div>
        </form>
        <%
        } else {
        %>
        <div class="alert alert-warning">
            <lebel>OPPS la contraseña nueva no coincide <br>vuelve a intentarlo</lebel>
        </div>
        <div class="form-group">
            <a class="btn btn-info btn-black" href="index.jsp">Regresar</a>
        </div>
        <%
                }
            }
        } catch (Exception e) {
            //out.println(e.getMessage());
        %>
        <div class="alert alert-danger" colspan="2">
            <h2>Contraseña Incorrecta</h2>
        </div>
        <div class="form-group">
            <a class="btn btn-info btn-black" href="index.jsp">Regresar</a>
        </div>
        <%
                }
            }
        %>
    </body>
</html>