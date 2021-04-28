<%-- 
    Document   : index
    Created on : 27/04/2021, 07:53:19 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title>Oktoberfest</title>
  </head>
  <body class="bg-light">

    <div class="container-fluid ">

      <div class="row ">
        <div class="col">
          <img src="imgs/logo.jpg" class="img-fluid" width="12%">
        </div>
      </div>
      <div class="row my-3">
        <div class="col-sm-2">
          <nav id="navbar-menu" class="navbar navbar-light bg-light p-3">
            <a class="navbar-brand" href="#">Menu</a>
            <nav class="nav nav-pills flex-column">
              <a class="nav-link active" href="index.jsp">Informacion General</a>
              <nav class="nav nav-pills flex-column">
                <a class="nav-link ms-3 my-1" href="#cervezas">Lista de cervezas</a>
                <a class="nav-link ms-3 my-1" href="#sesion">Iniciar sesion</a>

              </nav>
              <a class="nav-link">Lista de cervezas</a>
              <nav class="nav nav-pills flex-column">
                <a class="nav-link ms-3 my-1" href="astra.jsp">Astra</a>
                <a class="nav-link ms-3 my-1" href="weidmann.jsp">Weidmann</a>
                <a class="nav-link ms-3 my-1" href="becks.jsp">Beck's</a>
                <a class="nav-link ms-3 my-1" href="erdinger.jsp">Erdinger</a>
              </nav>
            </nav>
          </nav> 
        </div>
        <div class="col-sm-8 mx-sm-5">
          <div class="row">
            <h2>Informacion General</h2>
          </div>
              <div class="row my-3">
                <h3 id="lista">Lista de cervezas</h3>
                <ul class="mx-4">
                    <li><a href="astra.jsp">Astra </a></li>
                    <li><a href="weidmann.jsp">Weidmann</a></li>
                    <li><a href="becks.jsp">Beck's</a></li>
                    <li><a href="erdinger.jsp">Erdinger</a></li>
                </ul>
              </div>

              <div class="row my-3">
                    <h3 id="sesion">Inicia sesion para tener acceso a los almacenes de cadena</h3>
                    <form class=" col-5" action="index.jsp" method="POST">
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Usuario</label>
                        <input type="text" class="form-control" name="usuario">
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" name="clave">
                      </div>
                      <% if (request.getMethod().equalsIgnoreCase("POST")){ 
                            if (request.getParameter("usuario").equalsIgnoreCase("John")  && request.getParameter("clave").equalsIgnoreCase("Smith")){
                                session.setAttribute("autorizado", true);  
                      %>
                        <div class="alert alert-success" role="alert">
                            Sesion creada exitosamente                    
                        </div>
                      <% }else{ %>
                        <div class="alert alert-danger" role="alert">
                            Usuario o contraseña incorrectos                    
                        </div>
                        <% }} %>
                      <button type="submit" class="btn btn-primary float-end col-4">Ingresar</button>
                    </form>
              </div>

              <div class="row">
                <div class="col">
                  <a class="btn btn-dark" href="#" role="button">Volver al inicio</a>

                </div>
              </div>
        </div>
      </div>
      <div class="row bg-dark">
        <div class="col-sm-3 mx-auto text-white p-3">
          <p>Creado por: Andres Mauricio Cano Causil </p>
          <p>Ciudad: Medellin, Antioquia </p>
          <p class="m-0">Correo: andrescaza246@hotmail.com </p>
        </div>

      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

   
  </body>
</html>
