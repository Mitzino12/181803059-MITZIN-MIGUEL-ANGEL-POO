<%-- 
    Document   : index
    Created on : 25 may 2020, 21:31:47
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
        <h1>Un programa que determine si un número es perfecto.</h1>
            <%if ((request.getParameter("num")) != null && request.getParameter("num") != "") {
                int n = Integer.parseInt(request.getParameter("num"));
                int acum = 0;
                for (int i = 1; i < n; i++) {
                    if ((n % i) == 0) {//Si el número mod donde este i posicionado es igual a 0
                        acum += i;//El numero almacenado se acumula%> 
                        <h3>Número divisor</h3>
                        <%out.println(i);//Se comienzan a imprimir los números divisores
                    }
            }%>
            <h2>Resultado de la suma de los divisores: </h2>
            <%out.println(acum);//Se imprime el resultado de la suma%>
            <h1></h1>
                    <%if (acum == n) {//Si la suma de los divisores es igual a lo que se tecleó
                        out.println("El número " + n + " es perfecto");//Entoncés es un número perfecto
                    } else {
                        out.println("No es un número perfecto\n");//No lo es 
                    }%>
        <form> 
            <input type="hidden" name="num" value=""/><br>
            <input type="submit" value="Regresar"/>
        </form>       
        <%} else {%>       
        <form> 
            Numero:
            <input type="number" name="num" required/><br>
            <input type="submit" value="Enviar"/>
        </form>
        <h4>No has ingresado ningun número</h4>
        <%}%>
    </body>
</html>
