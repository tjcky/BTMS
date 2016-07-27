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
    
    <!-- Sweet Alert -->
    <link href="/resources/bootstrap/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">BT+</h1>
            </div>
            <h3>Register to BTMS</h3>
            <form class="m-t" role="form" id="registerForm" action="/doregister" method="post">
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
    <script src="/resources/javascript/jquery.form.min.js"></script> 
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="/resources/bootstrap/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/resources/bootstrap/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- iCheck -->
    <script src="/resources/bootstrap/js/plugins/iCheck/icheck.min.js"></script>
    <!-- Custom and plugin javascript -->
    <script src="/resources/bootstrap/js/inspinia.js"></script>
    <script src="/resources/bootstrap/js/plugins/pace/pace.min.js"></script>

    <!-- Sweet alert -->
    <script src="/resources/bootstrap/js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
        $(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
            
            var options={
            	async : true,
            	dataType : 'text',
            	success : function(data) {
            		if (data == 'success') {
            			swal({
        	                title: '등록 완료',
        	                text: '확인을 누르면 로그인 페이지로 이동됩니다.',
        	                type: 'success',
        	               	confirmButtonColor: '#DD6B55',
        					confirmButtonText: '확인'
        	            }, function () {
        	            	window.location.href = '/login';
        	            });
            		} else {
            			swal({
        	                title: '등록 실패',
        	                text: '아이디가 중복이거나 \n아이디 또는 암호를 형식에 맞게 입력해주세요.',
        	                type: 'warning',
        	               	confirmButtonColor: '#DD6B55',
        					confirmButtonText: '확인'
        	            });
            			$('.form-control').val('');
            		}
            	}
            };
            
            $("#registerForm").submit(function(){
            	$(this).ajaxSubmit(options);
            	return false;
            });
        });
    </script>
</body>
</html>