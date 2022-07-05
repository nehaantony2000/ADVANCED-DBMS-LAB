<?php
$mongo = new MongoDB\Driver\Manager("mongodb://localhost:27017");
if(isset($_POST["submit"])){
    $name=$_POST["name"];
    $first_name=$_POST["firstname"];
    $rollno=$_POST["rollno"];
    $passwd=$_POST["password"];
    $writer=new MongoDB\Driver\Bulkwrite;
  $writer->insert(["name"=>$name,"rollno"=>$rollno,"passwd"=>$passwd,"firstname"=>$first_name]);
    $mongo->executeBulkWrite('form124.insertion',$writer);
    header("Location:Sucess.html");
    die();
}
?>
