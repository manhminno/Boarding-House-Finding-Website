<?php 
	if(isset($_GET['action'])) {
		session_unset();
		header('Location: http://localhost/Project-LTW/index.php');
	}
?>
