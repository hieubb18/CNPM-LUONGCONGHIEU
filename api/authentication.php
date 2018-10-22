<?php 
$app->get('/session', function() {
    $db = new DbHandler();
    $session = $db->getSession();
    $response["uid"] = $session['uid'];
    $response["email"] = $session['email'];
    $response["name"] = $session['name'];
    echoResponse(200, $session);
});

$app->post('/login', function() use ($app) {
     $r = json_decode($app->request->getBody());
     $response = array();
    $db = new DbHandler();
    $password = $r->customer->password;
    $email = $r->customer->email;
    $pass = md5($password);
    $user = $db->getOneRecord("select uid,name,password,email,created from users where phone='$email' or email='$email'");
    if ($user != NULL) {
    if($user['password']==$pass){
        $response['status'] = "success";
        $response['message'] = 'Đăng nhập thành công';
        $response['name'] = $user['name'];
        $response['uid'] = $user['uid'];
        $response['email'] = $user['email'];
        $response['createdAt'] = $user['created'];
        if (!isset($_SESSION)) {
            session_start();
        }
        $_SESSION['uid'] = $user['uid'];
        $_SESSION['email'] = $email;
        $_SESSION['name'] = $user['name'];
    } else {
            $response['status'] = "error";
            $response['message'] = 'Đăng nhập thất bại. Thông tin mật khẩu không chính xác';
        }
    }else {
            $response['status'] = "error";
            $response['message'] = 'Bạn chưa đăng kí. Vui lòng liên hệ admin';
        }
    echoResponse(200, $response);
});
 
$app->get('/logout', function() {
    $db = new DbHandler();
    $session = $db->destroySession();
    $response["status"] = "info";
    $response["message"] = "Đăng xuất thành công";
    echoResponse(200, $response);
});
?>