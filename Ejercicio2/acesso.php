<?php
    //error_reporting(E_ERROR | E_WARNING | E_PARSE);
    include "conection.inc.php";
    $usuario=$_POST["usuario"];
    $pass=$_POST["pass"];
    $resultado = mysqli_query($con, "select * from usuario where usuario='".$usuario."'");   
    $resultado2 =  mysqli_query($con, "select * from persona as p, usuario as u where u.usuario='".$usuario."' and u.ci=p.ci");
    $fila = mysqli_fetch_array($resultado);
    $fila2 = mysqli_fetch_array($resultado2); 
    if($fila['ci']==null){
        echo "no existe usuario";
        echo " <a href='index.html'>Volver a intenetarlo</a> ";
    }else{
        
        if($pass==$fila['pass']){
            $nombre=$fila2['nombre'];
            $color=$fila['color'];
            echo " <body bgcolor='$color'>";
            echo "<center><h2>Bien venid@ ".$nombre."</h2></center>";
            echo "<center><h4>Esta es tu pantalla de acceso</h4></center>";
            echo "<form action='cambiarColor.php' method='POST'>";
            echo "<input type='hidden' name='usuario' value=".$usuario."><br>";
            ?>
                <label>Seleciona color de personalización de tu pantalla de acceso</label><br>
            <select name="color">
				<option selected>Selecciona color</option>
				<option value="white">Blanco</option>
				<option value="red">Rojo</option>
				<option value="blue">Azul</option>
				<option value="yellow">Amarillo</option>
				<option value="tan">Cafe</option>
				<option value="green">Verde</option>
				<option value="aqua">Celeste</option>
			</select>
            <button type="submit">CAMBIAR</button>
            <center><h4><a href="index.html">Salir</a></h4></center>
        </form>
            <?php
            echo "</body>";
           
        }else{
            echo "Contraseña incorrecta";
            echo " <a href='index.html'>Volver a intenetarlo</a> ";
        }
        
    }
?>
