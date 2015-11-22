<?php
/**
* 
*/
class A
{
	
function display(){
$day='monday';
$$day='first day of week';
echo $monday; //outputs 'first day of week'
}
}
/**
* 
*/
class B extends A
{
	
}
class C extends A
{
	
}
$result=new B;
 //$result->display();
 $first=0;
 $second=1;
 $number=10;
 echo "Fibonacci series for 10 numbers are: ";
for ($i=0; $i <$number ; $i++) { 
	if ($i<=1) {
		$next=$i;
	}
	else
	{
		$next=$first+$second;
		$first=$second;
		$second=$next;
	}
	echo $next ." ";
}
echo "<br/>";
echo "Prime numbers: ";
for ($i=2; $i <100 ; $i++) { 
	if ($i%$i==0) {
	goto endl;	
	}
}
echo $i." ";
endl:
echo "<br/>";
echo "cube numbers: ";
for ($i=1; $i<=10; $i++) { 
	echo pow($i, 3)." ";
}
echo "<br/>";
echo "square numbers: ";
for ($i=1; $i<=10; $i++) { 
	echo pow($i, 2)." ";
}
echo "<br/>";
$a=240;
$b=144;
$x=$a;
$y=$b;
while ($b!=0) {
	$t=$b;
	$b=$a%$b;
	$a=$t;
}
$gcd=$a;
$lcm=($x*$y)/$gcd;
echo "Greatest Common Divisor of given value is $gcd"."<br/>";
echo "Least Common Multiple of given value is $lcm";
?>
	
		
	
