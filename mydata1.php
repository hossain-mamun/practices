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
//Displaying MySql Records on a PHP page
$sql="SELECT * FROM Lectures";
$mydata=mysql_query($sql,$con);
while ($record=mysql_fetch_array($mydata)) {
	echo $record['Topic']." ".$record['Name']." ".$record['Attendance'];
	echo "<br/>";
    
}
mysql_close($con);
?>

</body>
</html>