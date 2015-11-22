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

mysql_select_db('snippetaa',$con);
$sql="CREATE TABLE userinfo(
Name varchar(20),
Mail varchar(20),
Password varchar(25),
)";
if(mysql_query($sql,$con)){
	echo "You have successfully created table";
}

mysql_close($con);

?>

</body>
</html>