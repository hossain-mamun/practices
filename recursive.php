<!DOCTYPE html>
<html>
<head>
	<title>Recursive</title>
</head>
<body>

<?php 
 function fact($n){
	if($n===0){    //Base Case
		return TRUE;  
	}
	else{
		$result= $n*fact($n-1);   // <-- Calling itself.
		return $result;
	}
}

echo "Factorial 10 :".fact(10);


?>
</body>
</html>