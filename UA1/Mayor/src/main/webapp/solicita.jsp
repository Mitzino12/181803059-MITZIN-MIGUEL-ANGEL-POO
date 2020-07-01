<%-- 
    Document   : solicita
    Created on : 27 may 2020, 8:27:25
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  int numero = Integer.parseInt(request.getParameter("numero"));%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar los números</title>
    </head>
    <body>
        <h1>Ingresa un total de: <%out.println(numero);%></h1>
        <form>
            <input type="hidden" value="<%out.print(numero);%>" name="numero"/>
            <%int nums[] = new int[numero];
                for (int i = 0; i < numero; i++) {%>
            <input type="number" name="valor<%out.print(i);%>" requerid/>
            <% if (request.getParameter("valor" + i) != null) {
                        int v = Integer.parseInt(request.getParameter("valor" + i));
                        nums[i] = v;
                    }
                }
                for (int i = 0; i < numero; i++) {
                    out.println(nums[i]);
                }%>
            <input type="submit" value="envianding dato"/>
        </form>
    </body>
</html>
