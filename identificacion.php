<?php
	include "conexion.php";
	
	
	$usuario = $_POST['usuario'];
	$rut = $_POST['rut'];
	$contrasena = $_POST['contrasena'];


	

	$sql="SELECT * FROM $usuario where rut='18230912-5' and contrasena='juan1823'";
	$resultado = mysql_query($sql);
	$fila=mysql_fetch_row($resultado);
	$nr = mysql_num_rows($resultado);

	if ($nr == 1){

		echo "$fila[6]";
	}elseif ($nr == 0){

		echo "fallo logueo";
	}



?> 