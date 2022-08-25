<?php
$conexionNissan = include("../Base_de_datos/con_db.php");

if ($conexionNissan) {
    # code...
    $consulta = "SELECT * from datospersonales";
    $resultado = mysqli_query($conectar, $consulta);

    $consulta2 = "SELECT * from datos_generales";
    $resultado2 = mysqli_query($conectar, $consulta2);

    if($resultado && $resultado2){
        while($fila = $resultado->fetch_array() and $fila2 = $resultado2->fetch_array() ){
            $nombre = $fila['nombre'];
            $correo = $fila2['email'];            
            $id = $fila['id'];
            ?>
            <div>
                <p>Hola <?php echo $nombre; ?></p>
                <p>Este correo fue enviado a <?php echo $correo; ?></p>
            </div>
            <?php
            
        }
    }
    
    
} else {
    # code...
    echo "Fallo";
}

echo $id;

?>