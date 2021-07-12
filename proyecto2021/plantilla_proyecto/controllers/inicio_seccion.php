<?php 
    class inicio_seccion extends Controller {
        function __construct()
        {
            parent::__construct();
            $this->view->render('inicio_seccion/index');
        }
/*
        function ingreso(){
            $correo = $_POST['correo'];
            $contrasenia = md5($_POST['contrasenia']);
            $datos = $this->buscar($correo);
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
            $usuario = $this->model->user($correo);
            if($usuario == []){
                return null;
            }else{
                return $usuario;
            }
    
        }
        */
    }
?>