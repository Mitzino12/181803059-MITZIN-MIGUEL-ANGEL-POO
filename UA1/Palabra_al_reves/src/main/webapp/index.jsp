<%-- 
    Document   : index
    Created on : 25 may 2020, 21:42:22
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Palabra al revés</h1>
        <%if ((request.getParameter("p")) != null && request.getParameter("p") != "") {
                String palabra = request.getParameter("p");
                for (int i = palabra.length(); i > 0; i--) {%>
                <h2>Letra: </h2>
                    <%out.println(palabra.substring(i - 1, i));
                    }%>
        <form> 
            <input type="hidden" name="text" value=""/><br>
            <input type="submit" value="Regresar"/>
        </form>
        <%} else {%>       
        <form> 
            Palabra:
            <input type="text" name="p" required/><br>
            <input type="submit" value="Enviar"/>
        </form>
        <h3>No has ingresado ninguna palabra</h3>
        <%}%>
    </body> 
</html>
