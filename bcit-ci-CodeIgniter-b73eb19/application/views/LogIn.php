<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Altas y Bajas</title>

	<style type="text/css">

	</style>
</head>
<body>	
	<h1>Log In</h1> <br>
	<?php 
		echo site_url('AltasBajas.php'); 
	?>
	<form method="GET" action="http://localhost/Ejercicio5/bcit-ci-CodeIgniter-b73eb19/index.php/AltasBajas" >
		<input type="text" name="nombre" value=""> <br>
		<input type="text" name="pwd" value=""> <br>
		<input type="submit" value="LogIn">
	</form>

</body>
</html>