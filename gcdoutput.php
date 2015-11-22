<!DOCTYPE html>
<html>
<head>
	<title>GCD and LCM Output</title>
</head>
<body>

<?php
$first_num=$_POST['first_number'];
$second_num=$_POST['second_number'];
$x=$first_num;
$y=$second_num;
while ( $second_num!=0) {
	$swap=$second_num;
	$second_num=$first_num%$second_num;
	$first_num=$swap;
}
$gcd=$first_num;
$lcm=($x*$y)/$gcd;
echo "<h3>Greatest Common Divisor of Given Numbers: $gcd</h3>";
echo "<h3>Least Common Multiple of Given Numbers: $lcm</h3>"."<br/>";


?>
</body>
</html>