<?php
	$conn = mysqli_connect("localhost", "id15770028_root", "74R(-2o>2rl1J}u>", "id15770028_nha_tro_db");
	if (!$conn) { //kiểm tra xem đã kết nối đến CSDL được chưa
		die("Connection failed: " . mysqli_connect_error());
	}
	mysqli_set_charset($conn, 'UTF8');
?>