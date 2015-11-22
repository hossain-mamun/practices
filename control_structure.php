<!DOCTYPE html>
<html>
<head>
	<title>logical expression</title>
</head>
<body>
<?php
$a=4;
$b=3;
if ($a>$b) {
	echo "a is larger than b";
}


?>
<br/>
<?php //only welcome the new user

$new_user=true;
if ($new_user) {
	echo "<h1>Welcome</h1>";
	echo "<p>We are glad you decided to join us!</p>";
}


?>
<?php
$numerator=20;
$denominator=4;
$result=0;
if ($denominator>0) {
  $result=$numerator/$denominator;
  echo "Result:{$result}";
	}
//	echo "Result:{$result}";




?><br/>
<?php
$a=4;
$b=3;
$c=8;
$d=5;
if (($a>$b) && ($c>$d)) {
	echo "a is larger than b AND ";
	echo "c is larger than d <br/>";
}


?>
<!--Switch-->
<?php 
$a=2;
switch ($a) {
	case 0:
		echo "a is equals 0 <br/>";
		break;
	
	case 1:
		echo "a is equals 1 <br/>";
		break;
	case 2:
		echo "a is equals 2 <br/>";
		break;
	case 3:
		echo "a is equals 3 <br/>";
		break;

	default:
	    echo "a is not equals 0,1,2,3<br/>";	

}

?>

<?php 
$year=2015;
switch (($year-4)%12) {
	case 0: $zodiac='rat'; break;
	case 1: $zodiac='ox'; break;
	case 2: $zodiac='tiger'; break;
	case 3: $zodiac='rabbit'; break;
	case 4: $zodiac='dragon'; break;
	case 5: $zodiac='snake'; break;
	case 6: $zodiac='horse'; break;
	case 7: $zodiac='goat'; break;
	case 8: $zodiac='Monkey'; break;
	case 9: $zodiac='rooster'; break;
	case 10: $zodiac='dog'; break;
	case 11: $zodiac='pig'; break;

	}

echo "{$year} is the year of the {$zodiac}.<br/>";


?>
<?php
$user_type='admin';
switch ($user_type) {
	case 'student':
		echo "Hello!";
		break;


	case 'admin':
	case 'customer':
	case 'press':
		echo "welcome";
		break;
	
	default:
		# code...
		break;
}


?>
<br/>
<!--while loop-->
<?php 
$count=0;
while ( $count<= 10) {
	echo $count  .",";
	++$count;

}

?>
<br/>
<!--forloops-->
<?php
for ($count=0; $count <=10 ; $count++) { 
	echo $count .",";
}


?>
<br/>
<?php
$i=0;
for ($i=20; $i>0;$i--){
if ( $i% 2 == 0) {
	echo "{$i} is even.<br/>";
}
else
{
echo "{$i} is odd.<br/>";
}	
}
?>

<!--foreach loops-->
<?php
$ages = array(5,7,22,32,45,65 );
foreach ($ages as $age) {
	echo "Age:{$age} <br/>";
}

$price = array('Hp' => 25000,'linda.com'=>24,'php'=>null );
foreach ($price as $item => $price) {
	echo "{$item}:";
	if (is_int($price)) {
		echo "$".$price;
	}
	else{
		echo "priceless";
	}
	echo "<br/>";
}

for ($count=0; $count <=10 ; $count++) { 
	if ($count%2==0) {
		continue(2);
	}
	echo $count .", <br/>";
}

?>

</body>
</html>