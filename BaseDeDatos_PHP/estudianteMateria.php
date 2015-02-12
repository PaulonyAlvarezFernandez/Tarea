<?php 
	include_once 'conexionDatos.php'; //INCLUYO ARCHIVO DE CONEXIÓN
		$idMateriaEscogida=$_POST['materia'];
		//======== Unir consultas de distintas tablas ========= // 
		//inner Join es igual a Join";
		$seleccionQuery = "SELECT em.id_estudiante AS idEstudiante, e.Nombre AS nombreEstudiante, m.materia_Nombre AS materiaNombre
		FROM estudiante_curso As em , estudiantes AS e,  materia AS m
		WHERE em.id_estudiante=e.id_Estudiante AND em.id_curso =".$idMateriaEscogida; 
			
		$resultUnion = mysqli_query($con,$seleccionQuery);
		while ($row = mysqli_fetch_array($resultUnion)) {
			echo "  
				<form action='notas.php' method='post'>
					<select name='usuario'>
						<option value='".$row['idEstudiante']."'>".$row['idEstudiante'] ."</option>
					</select>"
					
					." ".
					$row["nombreEstudiante"]
					." ".				
					"<select name='materia'>
						<option value='".$idMateriaEscogida."'>".$row['materiaNombre'] ."</option>
					</select>"
					
					." ".
					
					"<input type='submit' value='Ver notas'>
				</form>
			"
			;
 		}
			
 ?>
