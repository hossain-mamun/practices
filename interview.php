<?php
$x = 5;
echo $x;
echo "<br />";
echo $x+++$x++;
echo "<br />";
echo $x;
echo "<br />";
echo $x---$x--;
echo "<br />";
echo $x;
echo "<br/>";
$a = '1';
$b = &$a;
$b = "2$b";
echo "$b";
$x = true and false;
var_dump($x);
echo "<br/>";
$v = 1;
$m = 2;
$l = 3;

if( $l > $m ){
    echo "yes";
}else{
    echo "no";
}
$name=array('First_name'=>'Mamun','Middle_name'=>'Bin','Last_name'=>'Ruhul');
$number=array(1,2,4,'ch');
var_dump($number);
echo "<br/>";
print_r($name);

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<input type="color" name="color">
<input type="date" name="date">
</body>
</html>