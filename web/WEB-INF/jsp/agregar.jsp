<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Marvel&display=swap" rel="stylesheet">
    
        <title>Braintec</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4> Agregar nuevo registro</h4>
                    
                </div>
                <div class="thead-dark">
                    <form method="POST">
                        <label>Nombre Completo</label>
                        <input type="text" name="nom" class="form-control" required>
                        <label>Contraseña</label>
                        <input type="password" name="ndoc" class="form-control"required>
                        <label>Confirme Contraseña</label>
                        <input type="password" name="" class="form-control"required>
                        <label>Cargo</label>
                        <input type="text" name="cargo" class="form-control"required>
                        <input type="submit" value="Agregar" class="btn btn-info">
                        <a href="index.htm"class="btn btn-outline-danger">Regresar</a>
                    </form>
                    
                </div>
            </div>
            
        </div>
    </body>
</html>
