<?php 
		include_once 'conexionDatos.php'; //INCLUYO ARCHIVO DE CONEXIÓN
		//======== Modificar dato ========= // 
		$update = "UPDATE estudiantes SET nombre='Arnulio' WHERE id_estudiante = 1";
		if(mysqli_query($con, $update)){
			echo "Se cambiaron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron cambiaron :(";
		}
			
 ?>