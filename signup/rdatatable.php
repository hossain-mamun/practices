<!DOCTYPE html>
<html>
<head>
	<title>ReviewBDDatatable</title>
</head>
<body>
<?php
$con=mysql_connect('localhost','Hossain','safepassword');
if (!$con) {
	die("can not connect: ".mysql_error());
}

$db_selected=mysql_select_db('ReviewBD',$con);
if (!$db_selected) {
	die("Could not selected:".mysql_error());
}

$sql="INSERT INTO user_info(FullName,Email,Password,Gender,Division) VALUES ('$_POST[topic]','$_POST[name]','$_POST[attendance]')";

mysql_close($con);

?>

</body>
</html>