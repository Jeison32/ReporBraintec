

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Braintec</title>
    </head>
    <body>
                <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4> Actualizar registro</h4>
                    
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombres</label>
                        <input type="text" name="nom" class="form-control" value="${lista[0].usuario_empleado}">
                        <label>Contraseña</label>
                        <input type="text" name="ndoc" class="form-control" value="${lista[0].contrasena_empleado}">
                        <label>Cargo</label>
                        <input type="text" name="cargo" class="form-control" value="${lista[0].cargo_empleado}">
                        <input type="submit" value="Actualizar" class="btn btn-info">
                        <a href="index.htm"class="btn btn-outline-danger">Regresar</a>
                    </form>
                    
                </div>
            </div>
            
        </div>
    </body>
</html>
