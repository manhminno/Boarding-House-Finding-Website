<?php 
	if(isset($_GET['action'])) {
		session_unset();
		header('Location: http://localhost/Tim-Kiem-Nha-Tro/DangTinNhanh.php');
	}
?>
