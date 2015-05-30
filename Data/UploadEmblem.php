<?php

include('ResizeClass.php');
include('Data.php');

$output_dir  = "../Images/emblems/";

if(isset($_FILES["myfile"])){

$ret = array();

$error = $_FILES["myfile"]["error"];

if(!is_array($_FILES["myfile"]["name"])){

$name = $_FILES["myfile"]["name"];
move_uploaded_file($_FILES["myfile"]["tmp_name"],$output_dir.$name);
$ret[]= $name;

$resize = new ResizeImage($output_dir.$name);
				$resize->resizeTo(500, 500, 'exact');
				$resize->saveImage($output_dir.$name);
				
				InsertImage(str_replace("../","",$output_dir).$name,$_POST["Name"]);

				
}else{

$fileCount = count($_FILES["myfile"]["name"]);
 
 for($i=0; $i < $fileCount; $i++)
	  {
	  	$name = $_FILES["myfile"]["name"][$i];
		move_uploaded_file($_FILES["myfile"]["tmp_name"][$i],$output_dir.'temp'.$name);
	  	$ret[]= $name;
		

		$resize = new ResizeImage($output_dir.$name);
				$resize->resizeTo(1400, 900, 'exact');
				$resize->saveImage($output_dir.$name);
				
				
				InsertImage(str_replace("../","",$output_dir).$name,$_POST["Name"]);
	  }

}




echo json_encode($_POST["Name"]);

}



?>