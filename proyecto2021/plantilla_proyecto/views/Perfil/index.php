<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
</head>
<body>
    <?php require 'views/header.php';?>
    <div class="contenido">

        <div class="principal principal_flex">
            <div class="perfil">
                <?php 
                $nombre = "Thomas";
                    echo "<h3 class='centro'> Hola $nombre </h3>";
                ?>
                <hr>
                <h3>Sobre mí</h3>
                <textarea name="" cols="100" rows="3"></textarea>
                <hr>
                <h3>Lengujes</h3>
                
                <select name="" id="">
                    <?php 
                        $lenguajes =["Assembly", "Basic", "C", "C#", "C++", "Cobol", "Dart", "Elixir", "Fortran", "Go", "Haskell", "HTML-CSS", "Java", "JavaScript", "Kotlin", "Lisp", "Lua", "Pascal", "Perl", "PHP", "Python", "Ruby", "Rust", "SQL", "swift"];
                        foreach ($lenguajes as $l_p) {
                            echo '<option value="'.$l_p.'">'.$l_p.'</option>';
                        }
                    ?>
                </select>
                <hr>
                <h3>Tus Publicaciones</h3>
                <hr>
                <h3>Publicaciones Guardadas</h3>
                
            </div>
        </div>

        <div class="con_seg">
            <div class="con_seg_1">
                <ul>
                    <li></li>
                    <li></li>
                </ul>
            </div>

            <div class="con_seg_2">
                <ul>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>

    </div>
</body>
</html>