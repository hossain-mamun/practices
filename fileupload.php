<?php
  if(isset($_FILES['fileToUpload'])){
    $uploadName=$_FILES['fileToUpload']['name'];
    $uploadTemp=$_FILES['fileToUpload']['tmp_name'];
    $uploadTyp=$_FILES['fileToUpload']['type'];
    $uploadName=preg_replace("#[^a-z0-9.]#i", "", $uploadName);
    if (!$uploadTemp) {
        die("No file selected, please upload again");
    }
    else{
        move_uploaded_file($uploadTemp, "Upload/$uploadName");
    }
  }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Upload file</title>
</head>
<style>
body{
    background-color: #ccc;
}
    .fileuploadholder{
        width: 400px;
        height: 200px;
        margin: 60px auto 0px auto;
        background-color: #fff;
        padding-top: 20px;
        padding-left: 6px;
        border:1px solid #ccc;

    }
</style>
<body>
<div class="fileuploadholder">
<form action="fileupload.php" method="post" enctype="multipart/form-data" >
    Select file to upload:<br/>
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image" name="submit">
</form>

</div>
</body>

</html>