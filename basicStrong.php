<!DOCTYPE html>
<html>
<head>
	<title>BasicClear</title>
</head>
<body>
<?php 

$a=56;
echo gettype($a)."<br/>";
settype($a, 'double');
echo gettype($a)."<br/>";
$oddnum=range(1, 10, 2);
$product=array('Tires'=>100,'Oil'=>45,'spark_plugs'=>30);
foreach ($product as $key =>  $value) {
	echo  $key."=".$value."<br/>";
}
$marks=array(
'mamun'=>array(
	'physics'=>80,
	'chemistry'=>90,
	'biology'=>70),
'sharif'=>array(
	'physics'=>85,
	'chemistry'=>85,
	'biology'=>83),
'saiful'=>array(
	'physics'=>75,
	'chemistry'=>70,
	'biology'=>68)
);

	echo "<table>";
echo "<thead>";
echo "<tr>";
echo "<th>".'Name'."</th>";
echo "<th>".'Physics'."</th>";
echo "<th>".'chemistry'."</th>";
echo "<th>".'Biology'."</th>";


echo "</tr>";
echo "</thead>";

foreach($marks as $key => $value){
	 

//echo "</table>";
	
   foreach( $value as $key2 => $value2){
echo "<tbody>";
echo "<tr>";
echo "<td>".$key." ".$value2."</td>";
//echo "<td>".$value2." "."</td>";
echo "</tr>";
echo "</tbody>";
//echo "</thead>";
echo "</table>";
        
  }
}
echo "<br />";
$value=45;
echo "the value is $value";
echo "<br />";
echo 'the value is '.$value;
echo "<br />";
echo 'String\'s apostrophe';
echo "<br />";
echo "String can \"evaluates a sentence\"";
echo "<br />";
echo "C:\$www\nhttp\r example.com";
echo "<br />";
$a = 23;
$b = $a;
$a = 42;
var_dump($a);
var_dump($b);
$marks1 = array('english' => 80,
'bangla'=>90,
'math'=>89 );
echo "<br />";
print_r($marks1);
echo "<br />";
var_dump($marks1);
echo "<br />";
$x=10;
echo $x--;

?>
</body>
</html>