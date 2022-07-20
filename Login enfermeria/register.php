<?php

require_once("config.php");

if(isset($_POST['register'])){

    // filter data yang diinputkan
    $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
    $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
    // enkripsi password
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);


    // menyiapkan query
    $sql = "INSERT INTO users (name, username, email, password) 
            VALUES (:name, :username, :email, :password)";
    $stmt = $db->prepare($sql);

    // bind parameter ke query
    $params = array(
        ":name" => $name,
        ":username" => $username,
        ":password" => $password,
        ":email" => $email
    );

    // eksekusi query untuk menyimpan ke database
    $saved = $stmt->execute($params);

    // jika query simpan berhasil, maka user sudah terdaftar
    // maka alihkan ke halaman login
    if($saved) header("Location: login.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register Pesbuk</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">

        <p>&larr; <a href="index.php">Home</a>

        <h4>Registrate con el cargo a cumplir</h4>
        <p>Ya tienes cuenta? <a href="login.php">Inicia session</a></p>

        <form action="" method="POST">

            <div class="form-group">
                <label for="name">Cargo</label>
                <input class="form-control" type="text" name="name" placeholder="Enfermera/o-T.Enfermero/a-Medico" />
            </div>

            <div class="form-group">
                <label for="username">Usuario</label>
                <input class="form-control" type="text" name="username" placeholder="Usuario" />
            </div>

            <div class="form-group">
                <label for="email">Correo</label>
                <input class="form-control" type="email" name="email" placeholder="Correo" />
            </div>

            <div class="form-group">
                <label for="password">Clave</label>
                <input class="form-control" type="password" name="password" placeholder="Clave" />
            </div>

            <input type="submit" class="btn btn-success btn-block" name="register" value="Aceptar" />

        </form>
            
        </div>

        <div class="col-md-6">
            <img class="img img-responsive" src="connect.jpg" />
        </div>

    </div>
</div>

</body>
</html>