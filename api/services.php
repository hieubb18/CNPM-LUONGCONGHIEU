<?php


$app->get('/companInfo', function() {
    require_once 'config.php';
    $response = array();
    $sql="select * from  mcompany where active='Yes'";
    $result=mysqli_query($conn,$sql);
    
    while($row = mysqli_fetch_assoc($result)){
        $response['companyProfile']=$row;
    }
    echoResponse(200, $response);
});

$app->get('/statesListAll', function() {
    require_once 'config.php';
    $response = array();
    $sql="select * from  gmstate where active='Yes'";
    $result=mysqli_query($conn,$sql);
    
    while($row = mysqli_fetch_assoc($result)){
        $response['statList'][]=$row;
    }
    echoResponse(200, $response);
});


$app->post('/updateCompanyPro', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();

    $compdet = $r->compData->compData;

    $addr1 = $compdet->addr1;
    $addr2 = $compdet->addr2;
    $city = $compdet->city;
    $comid = $compdet->comid;
    $comnm = $compdet->comnm;
    $email = $compdet->email;
    $telephone = $compdet->telephone;
    $zip = $compdet->zip;
    $sql="update mcompany SET comnm='$comnm', addr1='$addr1',addr2='$addr2',city='$city',email='$email',telephone='$telephone',zip='$zip' where comid=$comid";
    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Thông tin cửa hàng cập nhật thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi cập nhật thông tin cửa hàng';
    }
    echoResponse(200, $response);
});


$app->post('/updatedTaxdtl', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();
    $mdon = date('Y-m-d H:i:s');
    $tdata = $r->taxesd->taxesd;
    
    $slabid = $tdata->slabid;

    $SoDienThoai = $tdata->SoDienThoai;
    $DiaChi = $tdata->DiaChi;
    $Email = $tdata->Email;
    $TenKhachHang = $tdata->TenKhachHang;
     

    $sql="UPDATE gstslab SET TenKhachHang='$TenKhachHang',SoDienThoai='$SoDienThoai',DiaChi='$DiaChi',Email='$Email',mdon='$mdon' 
     WHERE  slabid=$slabid";
    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Thêm thông tin khách hàng thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi';
    }

});

$app->get('/gettaxslab', function() {
    require_once 'config.php';
    $response = array();
    $sql="select * from  gstslab where active='Yes'";
    $result=mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        $response['slabProfile'][]=$row;
    }
     if($result){
            $response['status']='success';
            $response['message']='Thêm thông tin thành công';
        }else{
            $response['status']='error';
            $response['message']='Lỗi khi thêm ';
        }
    echoResponse(200, $response);
});


$app->post('/saveGstTaxData', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();
    
    $tdata = $r->txdata->txdata;
    $TenKhachHang = $tdata->TenKhachHang;
    $SoDienThoai = $tdata->SoDienThoai;
    $DiaChi = $tdata->DiaChi;
    $Email = $tdata->Email;
        $sql="insert into gstslab (`TenKhachHang`,`SoDienThoai`,`DiaChi`,`Email`) values ('$TenKhachHang','$SoDienThoai','$DiaChi','$Email')";
        $result=mysqli_query($conn,$sql);
        if($result){
            $response['status']='success';
            $response['message']='Lưu thông tin thành công';
        }else{
            $response['status']='error';
            $response['message']='Có lỗi xảy ra';
        }
     
    echoResponse(200, $response);
});


$app->get('/SlabbyId/:slbid', function($slbid) {
    require_once 'config.php';
    $response = array();
    $sql="select * from  gstslab where slabid=$slbid";
    $result=mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        $response['slabDetails'][]=$row;
    }
    echoResponse(200, $response);
});


$app->get('/deleteSlabsNow/:slbid', function($slbid) {
    require_once 'config.php';
    $response = array();
    $sql="update gstslab SET active='No' where slabid=$slbid";
    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Xoá khách hàng thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi xoá khách hàng';
    }


    echoResponse(200, $response);
});


$app->get('/getAllItems', function() {
    require_once 'config.php';
    $response = array();
    $json = array();
    $sql="select a.id,a.inm,a.hsn,a.price from mitem a where a.active='Yes'";
    
    $result=mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        $response['id']=$row['id'];
        $response['inm']=$row['inm'];
        $response['hsn']=$row['hsn'];
        $response['price']=(float)$row['price'];
     
        array_push($json , $response);
    }
    echoResponse(200, $json);
});


$app->get('/itembyId/:itemId', function($itemId) {
    require_once 'config.php';
    $response = array();
    $sql="select * from  mitem where id=$itemId";
    $result=mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        $response['itemByid']=$row;
    }
    echoResponse(200, $response);
});


$app->post('/saveNewItem', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();

    $itesm = $r->newitesm->newitesm;
    $itemnm = $itesm->itemnm;
    $hsn    = $itesm->hsn;
    $price  = $itesm->price;
    
    $sql="insert into  mitem (`inm`,`hsn`,`price`) ";
    $sql.=" values ('$itemnm','$hsn','$price')";
    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Mặt hàng được thêm thành công';
    }else{
        $response['status']='error';
        $response['message']='Có lỗi xảy ra';
    }
    echoResponse(200, $response);
});



$app->post('/saveNewEdItem', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();

    $itesm = $r->itemsData->itemsData;

    $itemnm = $itesm->inm;
    $hsn    = $itesm->hsn;
    $price  = $itesm->price;
    $id =  $itesm->id;
         
    $sql="update mitem SET inm='$itemnm',hsn='$hsn',price='$price' WHERE id=$id ";
     $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Mặt hàng cập nhật thành công';
    }else{
        $response['status']='error';
        $response['message']='Có lỗi';
    }
    echoResponse(200, $response);
});

$app->get('/itemDelete/:itemId', function($itemId) {
    require_once 'config.php';
    $response = array();
    
//    Xoá hẳn khỏi csdl
    $sql="delete from mitem where id=$itemId";
    
//    chi ẩn sản phẩm vào csdl
//    $sql="update mitem set active='No' where id=$itemId";

    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Xoá thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi rồi';
    }
    echoResponse(200, $response);
});


/******** Supplier API *****************************/


$app->get('/getSuppliers', function() {
    require_once 'config.php';
    $response = array();
    $sql="select a.*,b.stnm from  supplier a INNER JOIN  gmstate b ON a.stid=b.stid where a.active='Yes'";
    $result=mysqli_query($conn,$sql);
    
    while($row = mysqli_fetch_assoc($result)){
        $response['supList'][]=$row;
    }
    echoResponse(200, $response);
});




$app->post('/saveSuprDet', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();

    //Tham số cho khách hàng (Nhà cung cấp)
    $supdt = $r->supdetails;
    $contactp = $supdt->contactp;
    $contctno = $supdt->contctno;
    $email = $supdt->email;
    $supaddr = $supdt->supaddr;
    $supnm = $supdt->supnm;
    $supstate = $supdt->supstate;
    $sql="insert into  supplier (`supnm`,`contactp`,`contctno`,`email`,`stid`,`supaddr`)";
    $sql.=" values ('$supnm','$contactp','$contctno','$email','$supstate','$supaddr')";

    $result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
    if($result){
        $response['status']='success';
        $response['message']='Thêm nhà cung cấp thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi thêm nhà cung cấp ';
    }
    
    echoResponse(200, $response);
});

$app->get('/supDelete/:supid', function($supId) {
    require_once 'config.php';
    $response = array();
    $sql="delete from supplier where supid=$supId";
    $result=mysqli_query($conn,$sql);
    if($result){
        $response['status']='success';
        $response['message']='Xoá thành công';
    }else{
        $response['status']='error';
        $response['message']='Lỗi rồi';
    }
    echoResponse(200, $response);
});


/**************** SALES API ********************/
$app->get('/getSuppliersLab/:supid', function($supid) {
    require_once 'config.php';
    $response = array();

     $sql="select stid from supplier where supid=$supid";
     $result= mysqli_fetch_assoc(mysqli_query($conn,$sql));
     $supslab =  $result['stid'];
    
     $sqlm="select stid from  mcompany where active='Yes'";
     $resultm= mysqli_fetch_assoc(mysqli_query($conn,$sqlm));
     $compslab =  $resultm['stid'];

     if($compslab==$supslab){
        $response['mySlab'] = 0;
     }else{
        $response['mySlab'] = 1;
     }
    echoResponse(200, $response);
});




$app->post('/saveNewaSales', function() use ($app) {
    require_once 'config.php';
    $r = json_decode($app->request->getBody());
    $response = array();
    $supid = $r->salesData->supid;


    $acm=mysqli_fetch_assoc(mysqli_query($conn,"select bseries from finyear where active='Yes'"));
    $series = $acm['bseries'];

    $salh=mysqli_fetch_assoc(mysqli_query($conn,"select count(*) as max from salesh"));
    $max = $salh['max'];

    $salhid = $series + $max;
    $inserth=mysqli_query($conn,"insert into salesh (`shid`,`supid`) values ($salhid,$supid)");
    $saleidh = mysqli_insert_id($conn);


    $sales = $r->salesData->sdetails;
    foreach($sales as $sdata){

        if(isset($sdata->itemnm)){
            $inms = $sdata->itemnm;
            $icd =  $inms->id;
            $disc = $sdata->disc;
            $price = $sdata->price;
            $qty = $sdata->qty;
            
            $insld = "INSERT INTO salesd(`shid`,`icd`,`price`,`saqty`,`disc`)";
            $insld.= " values ($saleidh,$icd,$price,$qty,$disc)";
            $exec = mysqli_query($conn,$insld);
            if($exec){
                $response['status']='success';
                $response['message']='Lưu đơn hàng thành công';
            }else{
                $response['status']='error';
                $response['message']='Lỗi sevices.php ';
            }
        }
    }
});
 

$app->get('/getssalesData', function() {
    require_once 'config.php';
    $response = array();
    $json_response = array();
    
    $sql="select a.rid,a.shid,a.saledt,b.supnm,b.contactp,b.contctno,(
    SELECT SUM(
        (
            (
                (c.price - (c.price * (c.disc/100) )) * c.saqty 
            ) 

            + (
                (
                    (
                        (c.price - (c.price * (c.disc/100) )) * c.saqty ) /100 
                    )

                )

                )
            ) 
               from salesd c where a.rid=c.shid
)
as Total 
FROM salesh a 
INNER JOIN supplier b ON a.supid=b.supid";

        $exec = mysqli_query($conn,$sql);
        while($row = mysqli_fetch_assoc($exec)){
         $response['salesList'][] = $row;
        }
 
    echoResponse(200, $response);
});





?>
