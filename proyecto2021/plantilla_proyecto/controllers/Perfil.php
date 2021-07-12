<?php 
    class Perfil extends Controller {
        private $id_u;
        private $rol;

        function __construct()
        {
            parent::__construct();
            session_start();
            $this->id_u = $_SESSION['id_u'];
            $this->rol = $_SESSION['rol'];
            session_write_close();
            $this->view->render('Perfil/index');
        }

        function render(){
            if (!isset($this->id_u) or !($this->rol=='user')) {
                if (session_status() == PHP_SESSION_ACTIVE) {
                    session_destroy();
                }
                header('Location:'.constant('URL').'inicio_seccion');
                exit;
            }
        }
    }
?>