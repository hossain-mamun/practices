<!DOCTYPE html>
<html>
<head>
	<title>MySqlConnect</title>
</head>
<body>
<form action="insertform.php" method="post">
Topic:<input type="text" name="topic"><br/>
Name:<input type="text" name="name"><br/>
Attendance:<input type="text"name="attendance"><br/>
<input type="submit"name="submit"value="Go">
	
</form>

<?php
if (isset($_POST['submit'])){

$con=mysql_connect('localhost','Hossain','safepassword');
if (!$con) {
	die("can not connect: ".mysql_error());
}

mysql_select_db('snippetaa',$con);
$sql="INSERT INTO Lectures(Topic,Name,Attendance) VALUES ('$_POST[topic]','$_POST[name]','$_POST[attendance]')";
mysql_query($sql,$con);
	


mysql_close($con);
}

?>

</body>
</html>