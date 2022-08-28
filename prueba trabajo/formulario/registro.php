<?php
include("../Base_de_datos/con_db.php");

if (isset($_POST['enviar'])) {

    $consulta = "SELECT * from datospersonales";
    $resultado = mysqli_query($conectar, $consulta);

    if($resultado){
        while($fila = $resultado->fetch_array() ){   
            $id = $fila['id'];
        }
        $KF = $id+1;
        
        // cifrado
        $KEY = "adriadna";
        $vector = openssl_random_pseudo_bytes(openssl_cipher_iv_length(('AES-256-CBC')));

        // datos personales
        $name = trim($_POST['nombre']);
        $nombre_cifrado = openssl_encrypt($name,'AES-256-CBC',$KEY,0,$vector);
        
        $vec = strval($vector); 
        $apellidoP = trim($_POST['apellido_paterno']);
        $apellidoM = trim($_POST['apellido_materno']);
        $genero = trim($_POST['genero']);
        
        $consulta1 = "INSERT INTO romper.datospersonales (nombre, apellido_paterno, apellido_materno, genero,vector) VALUES('$nombre_cifrado', '$apellidoP','$apellidoM', '$genero','$vector')";
        
        $resultado1 = mysqli_query($conectar, $consulta1);
    // razon social
    
    $tipo = trim($_POST['tipo']);
    $rfc = trim($_POST['rfc']);
    
    $consulta2 = "INSERT INTO romper.razon_social (tipo, rfc, clienteId) VALUES('$tipo', '$rfc', $KF)";
    
    $resultado2 = mysqli_query($conectar, $consulta2);
    // datos generales
    
    $email = trim($_POST['email']);
    $email_cifrado = openssl_encrypt($email,'AES-256-CBC',$KEY,0,$vector);
    $celular = trim($_POST['celular']);
    $CP = trim($_POST['CP']);
    
    $consulta3 = "INSERT INTO romper.datos_generales (email, celular, CP, idDP) VALUES('$email_cifrado', $celular, $CP, $KF)";
    $resultado3 = mysqli_query($conectar, $consulta3);

    echo "Envio exitoso";
    }
} else {
?>
    <h3>¡Ups!</h3>
<?php
}
?>