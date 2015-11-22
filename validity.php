<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>validity form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="validity.css">
</head>
<body>
<?php
$con=mysql_connect('localhost','Hossain','safepassword');
if (!$con) {
	die("can not connect: ".mysql_error());
}
mysql_select_db('snippeta',$con);
$sql="INSERT INTO UserInfo(Name,Email,Comment,Gender) VALUES ('$_POST[name]','$_POST[email]','$_POST[comment]','$_POST[gender]')";
mysql_query($sql,$con);
mysql_close($con);
$nameErr=$emailErr=$genderErr=$commentErr='';
$name=$email=$gender=$comment='';
if (isset($_POST['submit'])) {
	if (empty($_POST['name'])) {
		$nameErr="Name is required!";
	}
	else{
		$name=test_input($_POST['name']);
		if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
			$nameErr="Only letters and white space allowed!";
		}
	}
	if (empty($_POST['email'])) {
		$nameErr="Email is required!";
	}
	else{
		$email=test_input($_POST['email']);
		if (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
			$emailErr="Invalid email format!";
		}
	}
	if (empty($_POST['comment'])) {
		$commentErr='';
	}
	else{
		$comment=test_input($_POST['comment']);
	}
	if (empty($_POST['gender'])) {
		$genderErr="Gender is required!";
	}
	else{
		$gender=test_input($_POST['gender']);
	}

}
function test_input($data){
	$data=trim($data);
	$data=stripcslashes($data);
	$data=htmlspecialchars($data);
	return $data;
}


?>
<h2>PHP Form Validation</h2>
<span class="error">* required field.</span>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
Name:<input type="text" name="name">
<span class="error">*<?php echo $nameErr;?></span><br/><br/>
Email:<input type="text" name="email">
<span class="error">*<?php echo $emailErr;?></span><br/><br/>
Comment:<textarea name="comment"></textarea>
<br/><br/>
Gender:<input type="radio"name="gender"value="female">Female
<input type="radio"name="gender"value="male">Male <span class="error">*<?php echo $genderErr;?></span>
<br/><br/>
<input type="reset"name="reset"value="reset"> &nbsp;
<input type="submit"name="submit"value="submit">
</form>

<?php
echo "<h2>Your Input:</h2>";
echo $name;
echo "<br>";
echo $email;
echo "<br>";
echo $comment;
echo "<br>";
echo $gender;
?>

</body>
</html>