<!DOCTYPE html>
<html>
<head>
	<title>Exploring data types</title>
</head>
<body>
 <!-- Array -->
<?php
$numbers = array(4,5,6,3,9,7);
 echo $numbers['5'];
?><br/>
  

  <?php $mixed= array('4', "dog", '6', "mouse",   array("x", "y","z")); ?> <!--this is called nested array-->
  <?php echo $mixed[1]; ?><br/>
  
  <?php echo $mixed[4][1]; ?><br/>
  <?php $mixed[1]="cat";?><br/>
  <?php $mixed[4][1]="mouse";?><br/>
   <?php $mixed[5]="rat";?><br/>

           <pre>
               <?php echo print_r($mixed); ?><br/>
           </pre>

           <!-- Associative Array -->
           <?php $assoc = array('first_name' =>"Mamun" ,"last_name"=>"Hossain" ); ?>
           <?php echo $assoc["first_name"]." ".$assoc["last_name"]; ?><br/>
           <?php //echo $assoc[0];?>

<!-- Array Function-->

<?php $numbers = array(8,6,32,4,67,9 ); ?>
count: <?php echo count($numbers); ?><br/>
max: <?php echo max($numbers); ?><br/>
min: <?php echo min($numbers); ?><br/>
<pre>
sort:<?php sort($numbers); print_r($numbers); ?> 
reverse-sort:<?php rsort($numbers); print_r($numbers); ?> 
</pre><br/>
<?php $mailing=array('Road#2', 'Home#25', 'Block-E', 'Banasree', 'Rampura', 'Dhaka');?><br/>
Implode:<?php echo $num_string=implode(" , ", $mailing); ?><br/>
<pre>
explode:<?php print_r(explode( ",", $num_string)); ?>
</pre>


<br/>

15 in array?:<?php echo in_array(15, $numbers);//return T/F ?><br/>
67 in array?:<?php echo in_array(67, $numbers);//return T/F ?><br/>
<pre>
<?php
$array = array(
         "ab",
   6 =>  "b",
         34,
         "d",
);
var_dump($array);
?>
</pre><br/>
<?php $numbers = array(8,6,'Mamun',4,67,9 ); 

echo $numbers{2};

?><br/>
<!-- Boolean-->
<?php $result1=TRUE;
      $result2=FALSE;
      ?>
result1:<?php echo $result1; ?><br/>
result2:<?php echo $result2; ?><br/>
result2 is boolean?<?php echo is_bool($result2)  ?><br/>
<!-- NULL and empty diff.-->
<?php 
$var1=null;
$var2="";
?>
var1 is null? <?php echo is_null($var1); ?><br/>
var2 is null? <?php echo is_null ($var2); ?><br/>
<!--SET-->
var1 is set? <?php echo isset($var1); ?><br/>
var2 is set? <?php echo isset($var2); ?><br/>
var3 is set? <?php echo isset($var3); ?><br/>
<!-- Type juggling and casting-->
<?php $count="2";?>
Type:<?php echo gettype($count)?><br/>

<?php $count+=3;?>
Type:<?php echo gettype($count)?><br/>
<?php $cats="I have".$count."cats";
echo $cats;?><br/>

Cats:<?php echo gettype($cats)?><br/>

<!-- type casting-->
<?php settype($count, "integer")?>
Count:<?php echo gettype($count);?><br/>

<?php $test1=3;
      $test2=4;?>

      <?php settype($test1, "string"); ?>
      <?php (string)$test2; ?>

      test1:<?php echo gettype($test1)?><br/>
      test2:<?php echo gettype($test2)?><br/>
      <!--Constants-->
      <?php 
  $max_width=980;
  define("MAX_WIDTH", 980);
  echo MAX_WIDTH;

      ?><br/>
      <?php echo gettype(MAX_WIDTH)?>


</body>
</html>