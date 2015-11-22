<!DOCTYPE html>
<html>
<head>
	<title>Second Page</title>
</head>
<body>
<pre></pre>

	<?php 
	if (isset($_POST['submit'])) {
		    if (empty($_POST['fname'])) {
			echo "First Name is Required!";
         }

         else{
         	echo $_POST['fname'];
         }
    echo "<br/>";
            if (empty($_POST['lname'])) {
			echo "Last Name is Required!";
         }

         else{
         	echo $_POST['lname'];
         }
    echo "<br/>";
            if (empty($_POST['inputEmail'])) {
			echo "Email is Required!";
         }
         else{
         	echo $_POST['inputEmail'];
         }

    echo "<br/>";
             if (empty($_POST['psw'])) {
			echo "Password is Required!";
         }
    }

    	else{
    		echo "Logging in First";
    	}



?>
<?php echo "Current php version:".phpversion(); ?>
</body>
</html>