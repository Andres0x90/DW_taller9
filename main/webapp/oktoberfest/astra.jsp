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

    <title>Astra</title>
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
              <a class="nav-link " href="index.jsp">Informacion General</a>
              <a class="nav-link active">Lista de cervezas</a>
              <nav class="nav nav-pills flex-column">
                <a class="nav-link ms-3 my-1 active" href="astra.jsp">Astra</a>
                <nav class="nav nav-pills flex-column">
                <a class="nav-link ms-3 my-1" href="#descripcion">Descripcion</a>
                <a class="nav-link ms-3 my-1" href="#almacenes">Almacenes</a>
              </nav>
                <a class="nav-link ms-3 my-1" href="weidmann.jsp">Weidmann</a>
                <a class="nav-link ms-3 my-1" href="becks.jsp">Beck's</a>
                <a class="nav-link ms-3 my-1" href="erdinger.jsp">Erdinger</a>
              </nav>
            </nav>
          </nav> 
        </div>
        <div class="col-sm-8 mx-sm-5">
          <div class="row">
            <h2>Astra</h2>
          </div>
            <div class="row my-3">
                <img class="col-4" src="imgs/astra.jpg" style="width: 15%;">
            </div>
              <div class="row my-3">
                  <h3 id="descripcion">Descripcion</h3>
                  <p>La cerveza ASTRA es por excelencia la cerveza de la ciudad de Hamburgo en el norte de Alemania. Debido a que tradicionalmente se produce en una zona donde vivían antiguamente piratas, han querido relacionar la imagen de la marca con un estilo marinero y provocativo reflejado en los logos y en las publicidades. Con la Rotlicht nos encontramos una botella de 33cl con etiqueta roja que juntamente con su logo da una sensación ligeramente erotica en honor al barrio rojo de Hamburgo (“rotlicht” en alemán significa “barrio rojo”).

                    Si nunca antes has saboreado esta típica cerveza alemana te encontraras con una cerveza rubia tipo Helles ideal para refrescarse y ayudar a pasar el calor de las noches de verano. Una cerveza de color dorado oscuro con una espuma blanca perla que prevalece como mosto y con un sabor ligeramente amargo que la equilibra de manera excelente. El aroma es bastante dulce y maltoso con toques a caramelo y azúcar.

                    Carlsberg adquirió la cervecería en 2004 y decidió que no todas las cervezas producidas por Astra estarían a la venta al mismo tiempo. Por suerte para todos, la ASTRA Rotlicht es una de las tres que sí podras disfrutar durante todo el año en cualquier lugar de Alemania.
                  </p>
              </div>
              <div class="row my-3">
                    <h3 id="almacenes">Almacenes</h3>
                    <% if (session.getAttribute("autorizado") != null){ %>
                        <div class="row my-3">
                        <div class="col-md-4">
                          <div class="list-group" id="list-tab" role="tablist">
                            <a class="list-group-item list-group-item-action active" id="list-d1-m-list" data-bs-toggle="list" href="#list-d1-m" role="tab" aria-controls="tesla-m">Tiendas D1</a>
                            <a class="list-group-item list-group-item-action" id="list-jumbo-list" data-bs-toggle="list" href="#list-jumbo" role="tab" aria-controls="gf1">Tiendas Jumbo</a>

                          </div>
                        </div>
                        <div class="col-md-8">
                          <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="list-d1-m" role="tabpanel" aria-labelledby="list-d1-m-list">
                              <p>D1 es una cadena de tiendas de descuento tipo hard discount en Colombia. Fue creada por el empresario chileno Michel Olmi en 2009. Seis años después vendió el negocio al Grupo Santo Domingo.​ Hoy es propiedad de Koba International Group y a 2020 tiene más de 1500 tiendas en Colombia.</p>
                            </div>
                            <div class="tab-pane fade" id="list-jumbo" role="tabpanel" aria-labelledby="list-jumbo-list">
                                <p>Jumbo es una cadena de supermercados chilena, con presencia también en Argentina y Colombia, perteneciente al consorcio empresarial Cencosud, que también es dueño de los supermercados Santa Isabel, Disco, Super Vea y Metro, así como a las tiendas Easy, Johnson y Paris.</p>
                            </div>

                          </div>
                        </div>
                      </div>

                    <% } else{ %>
                    <div class="alert alert-danger" role="alert">
                        Para ver este contenido necesita iniciar sesion                    
                    </div>
                    <% } %>
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
