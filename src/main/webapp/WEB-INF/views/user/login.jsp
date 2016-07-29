<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>BTMS Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BTMS | Login</title>

    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/style.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="/resources/bootstrap/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">BT+</h1>

            </div>
            <h3>Welcome to BTMS</h3>
            <form class="m-t" id="loginForm" role="form" id="loginForm" action="/trylogin" method="post">
                <div class="form-group">
                    <input type="text" name="userId" class="form-control" placeholder="ID" required/>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password" required/>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">로그인</button>
                
                <a class="btn btn-sm btn-white btn-block" href="/register">계정 생성</a>
            </form>            
        </div>
    </div>
    <!-- Mainly scripts -->
    <script src="/resources/bootstrap/js/jquery-2.1.1.js"></script>
    <script src="/resources/javascript/jquery.form.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>

    <!-- Sweet alert -->
    <script src="/resources/bootstrap/js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
	    $(function(){
			var options={
             	dataType : 'text',
             	success : function(data) {
             		if (data == 'success') {
             			window.location.href = '/main';
             		} else {
             			swal({
         	                title: '로그인 오류',
         	                text: '아이디나 비밀번호를 다시 확인해주세요.',
         	                type: 'warning',
         	               	confirmButtonColor: '#DD6B55',
         					confirmButtonText: '확인'
         	            });
             			$('.form-control').val('');
             		}
             	}
            };
                
            $('#loginForm').submit(function(){
               	$(this).ajaxSubmit(options);
               	return false;
            });
	    });
    </script>
</body>
</html>