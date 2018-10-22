<?php

require('salesHader.php');
require('../config.php');

$shid= $_REQUEST['SaleH'];
$pdf = new PDF();
$pdf->AddPage('P','A5');
 
$pdf->Ln(0);
$pdf->SetFont('Arial','',8);
$widths = array(30,40,30,20,40);
$border = array('','', '', '', '' );
$align = array('L','L', 'L', 'L','R');
$style = array('','', '', '');
$empty = array('HOA DON SO','.........','','NGAY','2018-10-19');
$pdf->SetWidths($widths);
$pdf->FancyRow($empty, $border);


$pdf->Ln(3);
$pdf->SetFont('Arial','B',8);
$pdf->cell(0,0,'HOA DON CHO KHACH HANG',0,0);
$pdf->SetFont('Arial','',8);
$pdf->Ln(3);
$pdf->cell(0,3,'THONG TIN CUA HANG',0,0);
$pdf->Ln(3);
$pdf->cell(0,5,'LIEN HE: ....',0,0);
$pdf->Ln(3);
$pdf->cell(0,6,'DIA CHI',0,0);
$pdf->Ln(3);
$pdf->cell(0,7,'THONG TIN: ....',0,0); 

$pdf->Ln(5);
 
$pdf->cell(40,7,'...........',0,0,'L'); 
$pdf->cell(40,7,'............',0,0,'L'); 


$pdf->Ln(6);
$pdf->SetX(1);
$pdf->SetFont('Arial','B',8);
$widths = array(10, 40,20, 20, 20,14,15);
$border = array('LBRT','BRT', 'BRT', 'BRT', 'BRT', 'BRT', 'BRT', 'BRT', 'BRT', 'BRT');
$align = array('C','C', 'C', 'C', 'C', 'C', 'C','C', 'C', 'C');
$style = array('','', '', '', '', '', '', '', '', '');
$empty = array('STT','Ten san pham','MA SAN PHAM','SO LUONG','GIA','TONG TIEN');
$pdf->SetWidths($widths);
$pdf->FancyRow($empty, $border);
$ridg= mysqli_fetch_assoc(mysqli_query($conn,"select rid from salesh where shid=$shid"));
$rid=$ridg['rid'];
$sql=mysqli_query($conn,"select a.*,b.inm,b.hsn from salesd a INNER JOIN mitem b ON a.icd=b.id where a.shid=$rid");
$count = 1;

$borders = array('LR','R', 'R', 'R', 'R', 'R', 'R','R','R','R');
$aligns = array('L','L', 'L', 'L', 'R', 'R', 'R','R','R','R');
$pdf->SetWidths($widths);
$pdf->SetX(1);
while($row = mysqli_fetch_assoc($sql)){
    $inm = $row['inm'];
    $hsn = $row['hsn'];
    $inm = $row['inm'];
    $saqty = $row['saqty'];
    $price = $row['price'];
    $pdf->SetFont('Arial','',8);
    $pdf->SetX(1);
    $captionss = array($count,$inm,$hsn,$saqty,$price,'300000');
    $pdf->FancyRow($captionss,$borders,$aligns);
    $count++;
}
$pdf->SetX(1);
$widths = array(5, 40,10, 20, 8,14,15,10,10,10);
$border = array('T','T', 'T', 'T', 'T', 'T', 'T', 'T', 'T', 'T');
$align = array('C','C', 'C', 'C', 'C', 'C', 'C','C', 'C', 'C');
$style = array('','', '', '', '', '', '', '', '', '');
$empty = array('','','','','','','','','','');
$pdf->SetWidths($widths);
$pdf->FancyRow($empty, $border);

$pdf->Output();
 ?>

