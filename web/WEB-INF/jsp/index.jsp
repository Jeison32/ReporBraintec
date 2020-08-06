<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- include the script -->
        <script src="{PATH}/alertify.min.js"></script>
        <!-- include the style -->
        <link rel="stylesheet" href="{PATH}/alertify.min.css" />
        <!-- include a theme -->
        <link rel="stylesheet" href="{PATH}/themes/default.min.css" />
        <!-- JavaScript -->
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

        <!-- CSS -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
        <!-- Default theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
        <!-- Semantic UI theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
        <!-- Bootstrap theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

        <!-- 
            RTL version
        -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.rtl.min.css"/>
        <!-- Default theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.rtl.min.css"/>
        <!-- Semantic UI theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.rtl.min.css"/>
        <!-- Bootstrap theme -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.rtl.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Marvel&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <title>Braintec</title>
    </head>

    <body>
        <div class="container mt-8">
            <div class="card border-dark">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-danger" href="http://localhost:8080/Login/"> Regresar</a>
                    <a class="btn btn-light" href="agregar.htm"> Nuevo Registro</a> 
                </div>

                <div class="card-body">
                    <table class="table table-hover">

                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombres</th>
                                <th>Contraseña</th>
                                <th>Cargo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.id_empleado}</td>
                                    <td>${dato.usuario_empleado}</td>
                                    <td>${dato.contrasena_empleado}</td>
                                    <td>${dato.cargo_empleado}</td>
                                    <td>
                                        <a href="editar.htm?id=${dato.id_empleado}" class="btn btn-outline-info">Editar</a>
                                        <a href="delete.htm?id=${dato.id_empleado}"class="btn btn-outline-danger" onclick="return pregunta()">Borrar</a>

                                        <script type="text/javaScript">
                                            function pregunta() {
                                                var mensaje = (confirm('¿Está seguro de borrar el registro?'));
                                                if (mensaje == true) 
                                                {
                                                    return true;
                                                    alert('El registro fue borrado exitosamente');
                                                } 
                                                else 
                                                {
                                                    return false;
                                                    
                                                }
                                            }
                                        </script>




                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>

            </div>


        </div>

    </body>
</html>
