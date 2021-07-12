
    <?php require 'views/header.php';?>
    <div class="p_seccion">
        <div id="form_seccion">
            <h1 class="centro">Iniciar Sección</h1>
            <form method="POST" action="<?php echo constant('URL');?>inicio_seccion">
                <label> <b> CORREO </b></label> <br>
                <input type="email" name="correo" class="input_texto"> <br>
                <label> <b>CONTRASEÑA</b> </label> <br>
                <input type="password" name="contrasenia" class="input_texto"> <br>
                <input type="submit" value="Iniciar Sección" class="boton_sec">
            </form>
            <p>No tienes cuenta? <a href="<?php echo constant('URL');?>registro_seccion">Crea una</a></p>
        </div>
    </div>
    <?php 

        if ($_POST) {
            $correo = $_POST['correo'];
            $contrasenia = md5($_POST['contrasenia']);
            $datos = buscar($correo);
            if ($datos==null) {
                echo 'El usuario no existe por favor registrese';
            }else {
                if ($contrasenia==$datos['contrasenia']) {
                    $id_usuario=$datos['id_usuario'];
                    session_start();
                    $_SESSION['id_u'] = $id_usuario;
                    $_SESSION['rol'] = $datos['codigo'];
                    $_SESSION['user'] = $correo;
                    if ($_SESSION['rol']=='USER') {
                        header('Location: '.constant('URL').'main');
                    }
                }else {
                    echo 'error';
                }
            }  
        }
        

        function buscar($correo){
            require 'models/inicio_seccionModel.php';
            $model = new inicio_seccionModel;
            $usuario = $model->user($correo);
            if($usuario == []){
                return null;
            }else{
                return $usuario;
            }
    
        }
    ?>
</body>
</html>