<?php 
	include_once 'conexionDatos.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$query = "SELECT * FROM materia ORDER BY idMateria ASC";
	$resultQuery = mysqli_query($con,$query);
?>

<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->

		<form action="estudianteMateria.php" method="post">
		  Materias del Pensum:<br/> 
		   <select name="materia">
		   <?php
			   	while ($row = mysqli_fetch_array($resultQuery)) {  
				/*<option value="<?php echo $row['id_estudiante'] ?>"> <?php echo $row['nombre'] ?> </option>*/
					echo "<option value='".$row['idMateria']."'>".$row['materia_Nombre'] ."</option>";
				}
			?>
		   </select>
		   <p><input type="submit" value="Continuar" /></p>
		</form>
	   
	  
	

	</body>
</html>