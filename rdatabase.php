<!DOCTYPE html>
<html>
<head>
	<title>ReviewBDDatabase</title>
</head>
<body>
<?php
$connect=mysql_connect('localhost','Hossain','safepassword');
if (!$connect) {
	die("can not connect: ".mysql_error());
}

if (mysql_query('CREATE DATABASE ReviewBD',$connect)) ;
	

mysql_close($connect);

?>

</body>
</html>