<!DOCTYPE html>
<html>
<head>
	<title>Function</title>
</head>
<body>
<!--Define&Call Function-->
<?php
function say_hello(){

	echo "Hello_world!<br/>";
}
say_hello();



?>
<!--Function arguments-->
<?php
$name="John Doe";
function say_hello_to($greeting,$target,$punct){

	echo $greeting." ".$target.$punct."<br/>";
}
say_hello_to("Hello",$name,"!!");

?>
<!--Function return values-->
<?php
function add($var1=8,$var2=7)
{
$sum=$var1+$var2;
return $sum;
}
$result1=add(3,4);
echo $result1."<br/>";
echo $result2=add()."<br/>";

?>
<!--Function multiple return values-->
<?php
function add_sub($val1,$val2)
{
$add=$val1+$val2;
$sub=$val1-$val2;
return  array($add,$sub);
}
list($add_result,$sub_result)=add_sub(10,5);
echo "Add:".$add_result."<br/>";
echo "Sub:".$sub_result."<br/>";


?>
<?php 
$bar="outside";
function foo(){
	global $bar;
	$bar="inside";
}
echo "1:".$bar."<br/>";
foo();
echo "2:".$bar."<br/>";
?>
</body>
</html>