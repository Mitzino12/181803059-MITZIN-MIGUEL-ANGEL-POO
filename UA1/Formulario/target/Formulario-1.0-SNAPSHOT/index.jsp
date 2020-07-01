<%-- 
    Document   : index
    Created on : 20 may 2020, 9:15:00
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>Este es mi primer formulario en donde conocerre la direfiencia entre POST<b> y GET</b></p>
        <form method="POST"> 
            <input type="text" name="mi nombre"/><br>
            <input type="password" name="contra"/><br>
            <input type="date" name="fecha nacimiento"/><br>
            <input type="submit" value="enviar"/>
        </form>
        <h1>Los datos ingresados son:</h1>
        <%
            out.println(request.getParameter("mi nombre"));
            out.println(request.getParameter("contra"));
            out.println(request.getParameter("fecha nacimiento"));
        %>

    </body>
</html>
