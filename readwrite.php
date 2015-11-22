<!DOCTYPE html>
<html>
<head>
	<title>read/write function </title>
</head>
<body>
<?php

$myfile=fopen("newfile1.txt", "w") or die("unable to open file!");
$txt="Hossain Mamun \n";
fwrite($myfile,$txt);
$txt1="Zahidul Islam\n";
fwrite($myfile,$txt1);
fclose($myfile);


?>
<?php
$myfile=fopen("newfile1.txt", "r") or die("unable to open file!");
while (!feof($myfile)) {
	echo fgets($myfile)."<br/>";
}
fclose($myfile);
?>
<?php
date_default_timezone_set("Asia/Dhaka");
echo "The time is " . date("h:i:sa");
?>
<br/>
<?php
$myfile = fopen("newfile1.txt", "r") or die("Unable to open file!");
// Output one character until end-of-file
/*while(!feof($myfile)) {
   echo fgetc($myfile)."<br/>";
}
fclose($myfile);
?> */
 ?>

</body>
</html>