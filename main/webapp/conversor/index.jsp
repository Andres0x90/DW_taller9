<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversor de pesos colombianos a USD</title>
    </head>
    <body>
        <h1 style="color:green;">Conversor de moneda</h1>
        <form style="background-color: gray; display:inline-block; padding:20px;" action="convertir.jsp", method="GET">
            <label for="num1">Pesos colombianos</label>
            <input type="text" name="valor" id="num1">
            <input type="submit" value="Convertir" onclick="return comprobar('num1')">
        </form>
        
        <script src="scripts/conversor.js" type="text/javascript"></script>
    </body>
</html>
