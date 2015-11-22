<!DOCTYPE html>
<html>
<head>
	<title>MySqlConnect</title>
</head>
<body>
<?php
$con=mysql_connect('localhost','Hossain','safepassword');
if (!$con) {
	die("can not connect: ".mysql_error());
}

if (mysql_query('CREATE DATABASE snippetaa',$con)) {
	echo "Your database was created sucessfully";
}
else echo "Error: ".mysql_error();
mysql_close($con);

?>

</body>
</html>