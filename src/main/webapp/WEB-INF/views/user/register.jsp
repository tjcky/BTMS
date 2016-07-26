<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BTMS | Register</title>

    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/style.css" rel="stylesheet">
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">BT+</h1>
            </div>
            <h3>Register to BTMS</h3>
            <form class="m-t" role="form" action="/doregister" method="post">
                <div class="form-group">
                    <input type="text" name="id" class="form-control" placeholder="아이디(영문+숫자)" required="">
                </div>
                <div class="form-group">
                    <input type="text" name="name" class="form-control" placeholder="이름" required="">
                </div>
                <div class="form-group">
                    <input type="text" name="nick" class="form-control" placeholder="별명" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="암호(5~50자이내)" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">등록</button>
                
                <a class="btn btn-sm btn-white btn-block" href="/login">로그인</a>
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="/resources/bootstrap/js/jquery-2.1.1.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="/resources/bootstrap/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>
</html>