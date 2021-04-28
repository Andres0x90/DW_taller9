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

    <title>Beck's</title>
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
                <a class="nav-link ms-3 my-1" href="astra.jsp">Astra</a>

                <a class="nav-link ms-3 my-1" href="weidmann.jsp">Weidmann</a>

                <a class="nav-link ms-3 my-1 active" href="becks.jsp">Beck's</a>
                                <nav class="nav nav-pills flex-column">
                <a class="nav-link ms-3 my-1" href="#descripcion">Descripcion</a>
                <a class="nav-link ms-3 my-1" href="#almacenes">Almacenes</a>
              </nav>
                <a class="nav-link ms-3 my-1" href="erdinger.jsp">Erdinger</a>
              </nav>
            </nav>
          </nav> 
        </div>
        <div class="col-sm-8 mx-sm-5">
          <div class="row">
            <h2>Beck's</h2>
          </div>
            <div class="row my-3">
                <img class="col-4" src="imgs/becks.jpg" style="width: 40%;">
            </div>
              <div class="row my-3">
                  <h3 id="descripcion">Descripcion</h3>
                  <p>Beck's es el nombre de una cerveza tipo pilsener alemana de amplio consumo nacional. La sede de la cervecería está situada en la ciudad de Bremen en el norte de Alemania. Beck's fue creada en el año 1873 y pertenece a la cervecería alemana Brauerei Beck GmbH & Co KG. En 2002 dicha cervecería fue comprada por la empresa belga Interbrew. Desde 2004, Interbrew se fusionó con AmBev y ahora se conoce como InBev. Posteriormente Inbev adquirió Anheuser-Busch para formar AB InBev.
                  </p>
              </div>
              <div class="row my-3">
                    <h3 id="almacenes">Almacenes</h3>
                    <% if (session.getAttribute("autorizado") != null){ %>
                        <div class="row my-3">
                        <div class="col-md-4">
                          <div class="list-group" id="list-tab" role="tablist">
                            <a class="list-group-item list-group-item-action" id="list-jumbo-list" data-bs-toggle="list" href="#list-jumbo" role="tab" aria-controls="gf1">Tiendas Jumbo</a>
                            <a class="list-group-item list-group-item-action" id="list-exito-list" data-bs-toggle="list" href="#list-exito" role="tab" aria-controls="gf2">Tiendas Exito</a>
                            <a class="list-group-item list-group-item-action" id="list-carulla-list" data-bs-toggle="list" href="#list-carulla" role="tab" aria-controls="gf3">Carulla</a>
                            <a class="list-group-item list-group-item-action" id="list-metro-list" data-bs-toggle="list" href="#list-metro" role="tab" aria-controls="gf4">Tiendas Metro</a>

                          </div>
                        </div>
                        <div class="col-md-8">
                          <div class="tab-content" id="nav-tabContent">
                             <div class="tab-pane fade" id="list-jumbo" role="tabpanel" aria-labelledby="list-jumbo-list">
                                <p>Jumbo es una cadena de supermercados chilena, con presencia también en Argentina y Colombia, perteneciente al consorcio empresarial Cencosud, que también es dueño de los supermercados Santa Isabel, Disco, Super Vea y Metro, así como a las tiendas Easy, Johnson y Paris.</p>
                            </div>
                            <div class="tab-pane fade" id="list-exito" role="tabpanel" aria-labelledby="list-exito-list">
                                <p>Grupo Éxito es una empresa multilatina colombiana del sector retail. Nació en 1905 con la marca Carulla y desde 1999 su accionista mayoritario es el grupo francés Casino. Es líder del retail en Colombia, con las marcas Éxito, Carulla, Super Inter, Surtimax, Surtimayorista, y su marca de centros comerciales Viva.</p>
                            </div>
                            <div class="tab-pane fade" id="list-carulla" role="tabpanel" aria-labelledby="list-carulla-list">
                                <p>Carulla es una cadena colombiana de supermercados perteneciente al Grupo Éxito. Tiene presencia en el territorio nacional con alrededor de 90 almacenes ubicados en 17 municipios, siendo Bogotá la ciudad con más almacenes de la marca.</p>
                            </div>
                            <div class="tab-pane fade" id="list-metro" role="tabpanel" aria-labelledby="list-metro-list">
                                <p>Metro es una cadena de supermercados de origen peruano, perteneciente al holding chileno Cencosud. Tiene presencia en Perú desde 1992 y Colombia desde 2013.</p>
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
