<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tdea.dw_taller9.Conversor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversion en dolares</title>
    </head>
    <body>
        <% if (request.getParameter("valor") != null){ %>
        <p><b style="color:yellowgreen;">Pesos colombianos: </b><%= request.getParameter("valor") %></p>
        <p><b style="color:green;">Dolares: </b><%= Conversor.convertir(Float.parseFloat(request.getParameter("valor"))) %></p>
        <% } else { %>
        <h1 style="color:red;">Error. Datos no capturados</h1>
        <% }%>
    </body>
</html>
