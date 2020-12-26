<?php 
	if(isset($_GET['action'])) {
		session_unset();
		header('Location: https://it4552-group5-trohn.000webhostapp.com/index.php');
	}
?>
