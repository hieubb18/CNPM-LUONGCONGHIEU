<?php
$conn = mysqli_connect("localhost","root","","banhang");
mysqli_query($conn,"SET NAMES 'UTF8'");
if($conn){
    return $conn;
}else{
    echo "Error connecting database";
}
?>
