<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./estilo.css" />
    <title>Registro Nissan</title>
</head>

<body>
    <header class="registro">
        <div class="logo">
            <img src="../ejercicio_maquetacion/recortes/logos.jpg">
        </div>
        <h1>Registra tus datos</h1>
    </header>

    <main class="registro">
        <form action="registro.php" method="POST">
            <div class="personales">
                <div class="names">
                    <label id="name" for="name">
                        <span> Nombre(s) </span>
                        <input name="nombre" id="name" type="text" required />
                    </label>
                </div>
                <div class="apellidos">
                    <label id="apellidoP" for="apellidoP">
                        <span> Apellido paterno </span>
                        <input name="apellido_paterno" type="text" id="apellidoP" required />
                    </label>
                    <label id="apellidoM" for="apellidoM">
                        <span> Apellido materno </span>
                        <input name="apellido_materno" type="text" id="apellidoM" required />
                    </label>
                    </label>
                    <label id="genero" for="genero">
                        <span> Genero </span>
                        <select name="genero" id="genero" required>
                            <option value="Hombre">Hombre</option>
                            <option value="Mujer">Mujer</option>
                            <option value="Otro">No especificar</option>
                        </select>
                    </label>
                </div>
            </div>

            <div class="razonSocial">
                <label for="razon">
                    <span>
                        Razón Social
                    </span>
                    <input name="razon" type="text" id="razon" required>
                </label>
                <br>
                <div class="checkbox">
                    <label class="checkbox" for="fisica">
                        <input name="tipo" type="radio" name="tipo" id="fisica" required>
                        <span>Persona física</span>
                    </label>
                    <label class="checkbox" for="moral">
                        <input name="tipo" type="radio" name="tipo" id="moral" required>
                        <span>Persona moral</span>
                    </label>
                </div>
                <label for="rfc">
                    <span>
                        RFC
                    </span>
                    <input name="rfc" type="text" id="rfc" required>
                </label>
            </div>

            <div class="datos__generales">
                <div>
                    <label for="email">
                        <span> Email </span>
                        <input name="email" type="email" id="email" placeholder="ejemplo@ejemplo.com" required />
                    </label>
                </div>
                <div>
                    <label for="celular">
                        <span> celular </span>
                        <input name="celular" type="tel" id="celular" placeholder="+52 55555555" required />
                    </label>
                </div>
                <div>
                    <label for="cp">
                        <span>Código postal</span>
                        <input name="CP" type="cp" placeholder="CP:6000" required>
                    </label>
                </div>
            </div>

            <button class="listo-btn" type="submit" name="enviar"></button>
        </form>
    </main>

    <?php
    include("registo.php");
    ?>
    <footer>
        <p>Todos los derechos reservados ©</p>
    </footer>
</body>

</html>