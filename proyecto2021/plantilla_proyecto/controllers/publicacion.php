<?php 
    class publicacion extends Controller {
        function __construct()
        {
            parent::__construct();
            $this->view->render('Publicacion/index');
        }
    }
?>