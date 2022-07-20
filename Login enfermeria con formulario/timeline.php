<?php require_once("auth.php"); ?>

<?php 
require_once("config.php");

if(isset($_POST['rut1'])){

    
    $Rut = filter_input(INPUT_POST, 'Rut', FILTER_SANITIZE_STRING);

    
    $sql = "INSERT INTO rut_paciente (RUT) 
            VALUES (:Rut)"; 
    $stmt = $db->prepare($sql);

    
    $params = array(
        ":Rut" => $Rut
    );

    
    $saved = $stmt->execute($params);

    
    
    if($saved) header("Location: forms.html");
}
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Busqueda</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">

            <div class="card">
                <div class="card-body text-center">

                    <img class="img img-responsive rounded-circle mb-3" width="160" src="img/<?php echo $_SESSION['user']['photo'] ?>" />
                    
                    <h3><?php echo  $_SESSION["user"]["name"] ?></h3>
                    <p><?php echo $_SESSION["user"]["email"] ?></p>

                    <p><a href="logout.php">Cerrar sesión</a></p>
                </div>
            </div>

            
        </div>


        <div class="col-md-8">

            <form action="forms.html" method="post">
                <div class="form-group">
                    <Label for="Rut1">Ingresar nuevo Rut Paciente:</Label>
                    <input type="text" name="Rut1" placeholder="00.000.000-0">
                </div>
                <input type="submit" value="Enviar" name="rut1">
            </form><br><br>

            <form action="mostrar.php" method="post">
                <div class="form-group">
                    <Label for="Rut2">Buscar Rut Paciente:</Label>
                    <input type="text" name="Rut2" placeholder="00.000.000-0">
                </div>
                <input type="submit" value="Enviar" name="rut2">
            </form>
        </div>
    
    </div>
</div>

</body>
</html>