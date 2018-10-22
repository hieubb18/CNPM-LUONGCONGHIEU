<?php
require('fancyrow.php');
class PDF extends PDF_FancyRow{
     function Header(){
        $this->SetMargins(0, 0);
        $this->Image('../../public/img/logo.png',2,2,20);
        $this->Cell(5);
        $this->SetFont('Courier','BIU',15);
        $this->Cell(0,0,'CUA HANG BAN QUAN AO',0,0,'C');
        $this->Ln(3);
        $this->Cell(10);
        $this->SetFont('Arial','I',10);
        $this->Cell(0,5,'TRUNG TAM THUONG MAI QUAN 9',0,0,'C');
        $this->Ln(4);
        $this->Cell(10);
        $this->Cell(0,5,'Dia chi: .................',0,0,'C');
        $this->Ln(4);
        $this->Cell(10);
        $this->Cell(0,5,'TP.HCM 700000',0,0,'C');
        $this->Ln(4);
        $this->SetLineWidth(0.01);
        $this->Line(0,26,200,26);
        $this->Ln(4);
        $this->Cell(10);
        $this->SetFont('Arial','B',10);
        $this->Cell(0,0,'HOA DON BAN LE',0,0,'C');
        $this->SetLineWidth(0.01);
        $this->Line(0,32,200,32);
        // Line break
        $this->Ln(5);
    }

    // Page footer
    function Footer(){
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        //$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}
?>