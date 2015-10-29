<?php

$conexion = mysql_connect("localhost","root","") or die("No se pudo establecer la conexion ".mysql_error());

mysql_select_db("proyectowebupla",$conexion);
?>