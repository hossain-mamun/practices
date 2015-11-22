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
if (isset($_POST['update'])) {
	$UpdateQuery= "UPDATE Lectures set Topic='$_POST[topic]',Name='$_POST[name]',Attendance='$_POST[attendance]' WHERE Topic='$_POST[hidden]'";
    mysql_query($UpdateQuery,$con);
};
if (isset($_POST['delete'])) {
	$DeleteQuery= "DELETE FROM Lectures  WHERE Topic='$_POST[hidden]'";
    mysql_query($DeleteQuery,$con);
};
if (isset($_POST['add'])) {
	$AddQuery= "INSERT INTO Lectures(Topic,Name,Attendance) VALUES ('$_POST[utopic]','$_POST[uname]','$_POST[uattendance]')";
    mysql_query($AddQuery,$con);
};



$sql="SELECT * FROM Lectures";
$mydata=mysql_query($sql,$con);

echo "<table border=1>
   <tr>
   <th>Topic</th>
   <th>Name</th>
   <th>Attendance</th>
   </tr>";

while ($record=mysql_fetch_array($mydata)) {
	echo"<form action=mydata3.php method=post>";
	echo "<tr>";
	echo "<td>"."<input type=text name=topic value=". $record['Topic']. " </td>";
	echo "<td>"."<input type=text name=name value=".$record['Name']." </td>";
	echo "<td>"."<input type=text name=attendance value=".$record['Attendance']." </td>";
	echo "<td>"."<input type=hidden name=hidden value=".$record['Topic']. " </td>";
	echo "<td>"."<input type=submit name=update value=update>". "</td>";
	echo "<td>"."<input type=submit name=delete value=delete>". "</td>";
	echo "</tr>";
	echo "</form>";

	}
   echo "<form action=mydata3.php method=post>";
   echo "<tr>";
   echo "<td>"."<input type=text name=utopic>"."</td>";
   echo "<td>"."<input type=text name=uname>"."</td>";
   echo "<td>"."<input type=text name=uattendance>"."</td>";
   echo "<td>"."<input type=submit name=add value=add"."  </td>";
   echo "</tr>";
   echo "</form>";
   echo "</table>";
mysql_close($con);
?>

</body>
</html>