  	                 <!DOCTYPE html>
<html>
<head>
       <meta charset="utf-8">
	   <title>Welcome to ReviewBD.net</title>
	   <meta name="viewport" content="width=device-width,initial-scale=1.0">
	   <link rel="stylesheet"  href="css/bootstrap.min.css">
	   <link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body >
<?php


?>
<div class="container customize">	
    <div class="jumbotron jumbocolor">
        <h2><font color="black">Please SignUp for ReviewBD!</font></h2><p>
        <small style="color:black">It's Free</small></p>

    </div>
</div>
<div class="container customize">
	<div class="row rowshape">
		<div class="col-md-5 col-sm-6 col-xs-12">
		      <form action="signup.php" method="post">
  	           <div class="form-group">
  	             <label for="inputfn3"class="control-level">Full Name :</label>
  	               <div class="input-group">
  	                 <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  	                    <input type="text" class="form-control" name="fullname" id="inputfn3" placeholder="Full Name">

  	              </div>
  	   	          </div>
  	   	         <div class="form-group">
  	             <label for="exampleInputEmail1"class="control-level">Email :</label>
  	               <div class="input-group">
  	                 <span class="input-group-addon"><span>@</span></span>
  	                    <input type="email" class="form-control"name="email" id="exampleInputEmail1" placeholder="Enter the email">
  	                
                    </div>
                    </div> 
         <div class="form-group">
         <label for="exampleInputPassword1">Password :</label>
         <div class="input-group">
         <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
         <input type="password" class="form-control"name="psw" id="exampleInputPassword1" placeholder="password">
         </div>
         </div>
        	
              <strong>Gender:</strong><br>
	          <input type ="radio"name="gender"/> Male <br>
              <input type="radio"name="gender"/> Female
              <p></p><p></p>
               <label for="inputn3"class="control-level">Division :</label>
  	      <select>
                  <option value="Dhaka">Dhaka</option>
                  <option value="Chittagong">Chittagong</option>
                  <option value="Rajshahi">Rajshahi</option>
                  <option value="Barishal">Barishal</option>
                  <option value="Barishal">Shylet</option>
                  <option value="Barishal">Khulna</option>
                  <option value="Barishal">Rangpur</option>
                  </select>
                  
                  <div class="row ">
                 
		          <div class="col-md-10 col-sm-9 col-xs-10 condition">
                  <p ><small>By&nbsp; clicking &nbsp;Sign Up,&nbsp;you&nbsp; agree&nbsp; to&nbsp; our <strong style="color:blue">terms &nbsp;</strong>
                  &amp;&nbsp; <strong style="color:blue">conditions!</strong></small></p>

                   </div></div>
                   <input type="submit"name="submit"value="Signup">
                    </form>
            </div><!-- end of the column-->
            </div><!-- end of the row-->
            
            
            
        
</div>
<?php
if ($_POST['submit']) {
	# code...

$con=mysql_connect('localhost','Hossain','safepassword');
if (!$con) {
	die("can not connect: ".mysql_error());
}

$db_selected=mysql_select_db('ReviewBD',$con);
if (!$db_selected) {
	die("Could not selected:".mysql_error());
}

$sql="INSERT INTO user_info(FullName,Email,Password,Gender,Division) VALUES ('$_POST[fullname]','$_POST[email]','$_POST[psw]'),'$_POST[gender]')";
$sql1="SELECT * FROM user_info";
$mydata=mysql_query($sql1,$con);
while ($record=mysql_fetch_array($mydata)) {
	echo $record['FullName']." ".$record['Email']." ".$record['Password'].$record['Gender'].$record['Division'];
	echo "<br/>";
    
}
}
mysql_close($con);


?>

</body>

