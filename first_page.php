<?php
$name='test';
$value=45;
$expire=time()+60*60*24*7;
//setcookie($name,$value,$expire)
?>


<!DOCTYPE html>
<html>
<head>
	<title>First Page</title>
</head>
<body>

<form action="second_page.php"method="post">
First Name:<font color="red">*</font><input type="text"name="fname"><br/>
Last Name:<font color="red">*</font><input type="text"name="lname"><br/>
Email:<font color="red">*</font><input type="mail"name="inputEmail"><br/>
Password:<font color="red">*</font><input type="password"name="psw"><br/>
About:<textarea name="about"> </textarea><br/>
<input type="reset"name="reset">
<input type="submit"name="submit"value="Go">
<br/>


</form>


</body>


</html>