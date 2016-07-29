<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Project is None</title>

    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h2>존재하지 않는 프로젝트</h2>
        <h3 class="font-bold">${projectId}</h3>

        <div class="error-desc">
			존재하지 않는 프로젝트 ID 입니다. <br>신규 프로젝트 신청은 운영자 <strong>홍길동[nt20003@nhnc.com]</strong>, <br>개발자 <strong>권영[doragee@nhn.com]</strong>으로 문의주시기 바랍니다.
        	<a href="/main" class="btn btn-primary">BTMS 홈으로 가기</a>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="/resources/bootstrap/js/jquery-2.1.1.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>