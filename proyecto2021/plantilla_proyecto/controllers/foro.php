<?php 
    class Foro extends Controller {
        function __construct()
        {
            parent::__construct();
            $this->view->render('Foro/index');
        }
    }
?>