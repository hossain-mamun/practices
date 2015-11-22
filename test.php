<!DOCTYPE html>
<html>
<head>
	<title>hello</title>
</head>
<body>
<?php echo "Hello world!"; ?><br>
<?php echo 2+3; ?><br>
<?php
$var1 = 10;
echo $var1;
echo "<br/>";
$var1 = 100;
echo $var1;
echo "<br/>";
$var2="hello world";
echo $var2;
echo "<br/>";
$greetings="Hello";
$target="world";
$phrase= $greetings . " " . $target;
echo $phrase;

?>
<br/>
<?php

echo "$phrase again <br/>";
echo "{$phrase} again<br/>";
$first="the quick brown fox ";
$second="jumped over the lazy dog.";

$third=$first;
$third .=$second;
echo "$third";
?>
<br/>

Lowercase:<?php echo strtolower($third);?><br/>
uppercase:<?php echo strtoupper($third);?><br/>
uppercase first:<?php echo ucfirst($third);?><br/>
uppercase words:<?php echo ucwords($third);?><br/>
Length:<?php echo strlen($third);?><br/>

trim:<?php echo "A". trim("B C D")."E";?><br/>
find:<?php echo strstr($third,"lazy");?><br/>
replace:<?php echo str_replace("quick","super-fast",$third);?><br/>
repeat:<?php echo str_repeat($var1, 2);?><br/>
make substring:<?php echo substr($third, 10,7);?><br/>
string-position:<?php echo strpos($third,"brown");?><br/>
Find-Charcter:<?php echo strchr($third,"z");?><br/>

<?php
$var4=3;
$var5=4;
?>

abs value: <?php echo abs(0-200); ?><br/>
exponential value: <?php echo pow(2,3); ?><br/>
sqrt value: <?php echo sqrt(9); ?><br/>
module:<?php echo fmod(20,7); ?><br/>
random value: <?php echo rand(); ?><br/>
random value(min,max): <?php echo rand(1,1000); ?><br/>
+= :<?php $var4+=4; echo "$var4";?><br/>
-= :<?php $var5-=4; echo "$var5";?><br/>

increment: <?php $var4++; echo $var4; ?><br/>
decrement: <?php $var4--; echo $var4; ?><br/>
round:<?php echo round(3.4); ?><br/>
ceilling:<?php echo ceil(5.1); ?><br/>



</body>
</html>