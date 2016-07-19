<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BTMS v 0.1</title>

    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Morris -->
    <link href="/resources/bootstrap/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">

    <link href="/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/style.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <!-- <div class="sidebar-collapse"> -->
        <div>
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> 
                    	<span>
                            <img alt="image" class="img-circle" src="/resources/bootstrap/img/profile_small.jpg" />
                        </span>
                        <a>
                            <span class="clear"> 
                            	<span class="block m-t-xs"> <strong class="font-bold">Doragee Williams</strong></span> 
                            	<span class="text-muted text-xs block">BTMS Developer</span> 
                            </span> 
                        </a>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">프로젝트 홈</span></a>                    
                </li>
                <li>
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">테스트 일정</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="table_basic.html">활동별 일정</a></li>
                        <li><a href="table_data_tables.html">작업별 일정</a></li>
                        <li><a href="table_foo_table.html">테스터별 일정</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">테스트 활동</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="form_basic.html">전체 활동 목록</a></li>
                        <li><a href="form_advanced.html">할당된 활동 목록</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">작업 템플릿</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="search_results.html">작업 템플릿 목록</a></li>
                        <li><a href="lockscreen.html">작업 템플릿 추가</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-pie-chart"></i> <span class="nav-label">통계</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="graph_flot.html">테스터 별</a></li>
                        <li><a href="graph_morris.html">환경 별</a></li>
                    </ul>
                </li>
                <li>
                    <a href="package.html"><i class="fa fa-database"></i> <span class="nav-label">프로젝트 관리</span></a>
                </li>
            </ul>
        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>
        </nav>
        </div>
        
        <div class="wrapper wrapper-content">

			<div class="row">
		        <div class="col-lg-6">
		        	<div class="row">
		        		<div class="col-lg-12">		
					        <div class="ibox float-e-margins">
						        <div class="ibox-title">
						            <h5>전체 테스트 활동 </h5>
						            <div class="ibox-tools">
						                <a class="collapse-link">
						                    <i class="fa fa-chevron-up"></i>
						                </a>
						                <a class="close-link">
						                    <i class="fa fa-times"></i>
						                </a>
						            </div>
						        </div>
						        <div class="ibox-content">			
						            <div class="table-responsive">
						                <table class="table table-striped">
						                    <thead>
						                    <tr>
						                        <th>#</th>
						                        <th>제목 </th>
						                        <th>QA </th>
						                        <th>상태 </th>
						                        <th>환경 </th>
						                    </tr>
						                    </thead>
						                    <tbody>
						                    <tr>
						                        <td>5</td>
						                        <td>뮤직 정기배포 6월 1주차</td>
						                        <td>권영</td>
						                        <td>진행중</td>
						                        <td>IE 10외 5개</td>
						                    </tr>
						                    <tr>
						                        <td>4</td>
						                        <td>뮤직 정기배포 5월 3주차</td>
						                        <td>이동섭</td>
						                        <td>완료</td>
						                        <td>IE 9외 4개</td>
						                    </tr>
						                    <tr>
						                        <td>3</td>
						                        <td>뮤직 정기배포 5월 2주차</td>
						                        <td>전평재</td>
						                        <td>완료</td>
						                        <td>Android 4.x외 5개</td>
						                    </tr>
						                    <tr>
						                        <td>2</td>
						                        <td>뮤직 정기배포 5월 1주차</td>
						                        <td>이선영</td>
						                        <td>진행중</td>
						                        <td>iPhone 6.x외 3개</td>
						                    </tr>
						                    <tr>
						                        <td>1</td>
						                        <td>뮤직 정기배포 4월 2주차</td>
						                        <td>조문기</td>
						                        <td>진행전</td>
						                        <td>Safari 9.x외 4개</td>
						                    </tr>
						                    </tbody>
						                </table>
						            </div>
						
						        </div>
					        </div>
		        		</div>
		        	</div>
		        	
		        	<div class="row">
		        		<div class="col-lg-12">
					        <div class="ibox float-e-margins">
						        <div class="ibox-title">
						            <h5>최근 사용중인 작업 템플릿 </h5>
						            <div class="ibox-tools">
						                <a class="collapse-link">
						                    <i class="fa fa-chevron-up"></i>
						                </a>
						                <a class="close-link">
						                    <i class="fa fa-times"></i>
						                </a>
						            </div>
						        </div>
						        <div class="ibox-content">			
						            <div class="table-responsive">
						                <table class="table table-striped">
						                    <thead>
						                    <tr>
						                        <th>#</th>
						                        <th>템플릿 명 </th>
						                        <th>버전 명 </th>
						                        <th>작성자</th>
						                    </tr>
						                    </thead>
						                    <tbody>
						                    <tr>
						                        <td>8</td>
						                        <td>뮤직플레이어</td>
						                        <td>2016년 6월 2주</td>
						                        <td>조문기</td>
						                    </tr>
						                    <tr>
						                        <td>7</td>
						                        <td>뮤직플레이어</td>
						                        <td>2016년 6월 1주</td>
						                        <td>김경연</td>
						                    </tr>
						                    <tr>
						                        <td>6</td>
						                        <td>마이뮤직</td>
						                        <td>2016년 6월 2주</td>
						                        <td>박성훈</td>
						                    </tr>
						                    <tr>
						                        <td>5</td>
						                        <td>마이뮤직</td>
						                        <td>2016년 6월 1주</td>
						                        <td>권영</td>
						                    </tr>
						                    <tr>
						                        <td>4</td>
						                        <td>뮤직플레이어</td>
						                        <td>2016년 5월 3주</td>
						                        <td>이동섭</td>
						                    </tr>
						                    <tr>
						                        <td>3</td>
						                        <td>뮤직플레이어</td>
						                        <td>2016년 5월 2주</td>
						                        <td>이선영</td>
						                    </tr>
						                    <tr>
						                        <td>2</td>
						                        <td>뮤지션 리그</td>
						                        <td>2016년 5월 1주</td>
						                        <td>전평재</td>
						                    </tr>
						                    <tr>
						                        <td>1</td>
						                        <td>뮤지션 리그</td>
						                        <td>2016년 4월 1주</td>
						                        <td>권영</td>
						                    </tr>
						                    </tbody>
						                </table>
						            </div>
						
						        </div>
					        </div>
			        	</div>
			        </div>
			        
			        <div class="row">
			        	<div class="col-lg-12">
			        						        <div class="ibox float-e-margins">
					        <div class="ibox-title">
					            <h5>프로젝트 사용자 </h5>
					            <div class="ibox-tools">
					                <a class="collapse-link">
					                    <i class="fa fa-chevron-up"></i>
					                </a>
					                <a class="close-link">
					                    <i class="fa fa-times"></i>
					                </a>
					            </div>
					        </div>
					        <div class="ibox-content">			
					            <div class="table-responsive">
					                <table class="table table-striped">
					                    <thead>
					                    <tr>
					                        <th>#</th>
					                        <th>이름 </th>
					                        <th>역할 </th>
					                        <th>등록자</th>					                        
					                        <th>진행중 활동 수 </th>
					                    </tr>
					                    </thead>
					                    <tbody>
					                    <tr>
					                        <td>3</td>
					                        <td>권영</td>
					                        <td>QA</td>
					                        <td>권영</td>					                        
					                        <td>5</td>
					                    </tr>
					                    <tr>
					                        <td>2</td>
					                        <td>이동섭</td>
					                        <td>TE</td>
					                        <td>권영</td>
					                        <td>2</td>
					                    </tr>
					                    <tr>
					                        <td>1</td>
					                        <td>전평재</td>
					                        <td>TE</td>
					                        <td>권영</td>
					                        <td>10</td>
					                    </tr>
					                    </tbody>
					                </table>
					            </div>
					
					        </div>
				        </div>
			        	</div>
			        </div>
		        </div>
		        
		        <div class="col-lg-6">
			        <div class="row">
				        <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>활동 스트림</h5>                            
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>

                        <div class="ibox-content inspinia-timeline">
                        	<div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        6:00 am
                                        <br/>
                                        <small class="text-navy">2 hour ago</small>
                                    </div>
                                    <div class="col-xs-7 content no-top-border">
                                        <p class="m-b-xs"><strong>권영</strong></p>
                                        <p>뮤직플레이어 > 2016년 7월 1주차 > 24개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        7:00 am
                                        <br/>
                                        <small class="text-navy">3 hour ago</small>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>이동섭</strong></p>
                                        <p>마이뮤직 > 2016년 7월 2주차 > 132개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        11:00 am
                                        <br/>
                                        <small class="text-navy">21 hour ago</small>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>이선영</strong></p>
                                        <p>뮤직플레이어 > 2016년 7월 1주차 > 124개 수행</p>
                                        <p>환경 : iPhone 5.x</p>
                                    </div>
                                </div>
                            </div>

                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        6:00 am
                                        <br/>
                                        <small class="text-navy">2 hour ago</small>
                                    </div>
                                    <div class="col-xs-7 content no-top-border">
                                        <p class="m-b-xs"><strong>권영</strong></p>
                                        <p>뮤직플레이어 > 2016년 7월 1주차 > 24개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        7:00 am
                                        <br/>
                                        <small class="text-navy">3 hour ago</small>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>이동섭</strong></p>
                                        <p>마이뮤직 > 2016년 7월 2주차 > 132개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="row">
                                    <div class="col-xs-3 date">
                                        <i class="fa fa-file-text"></i>
                                        8:00 am
                                        <br/>
                                    </div>
                                    <div class="col-xs-7 content">
                                        <p class="m-b-xs"><strong>전평재</strong></p>
                                        <p>마이뮤직 > 2016년 7월 1주차 > 422개 수행</p>
                                        <p>환경 : IE 9, IE 10, Chrome, Android 4.x</p>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>
			        </div>

		        </div>
	        </div>
        </div>


        </div>


	</div>

    <!-- Mainly scripts -->
    <script src="/resources/bootstrap/js/jquery-2.1.1.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="/resources/bootstrap/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/resources/bootstrap/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/jquery.flot.symbol.js"></script>
    <script src="/resources/bootstrap/js/plugins/flot/curvedLines.js"></script>

    <!-- Peity -->
    <script src="/resources/bootstrap/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="/resources/bootstrap/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="/resources/bootstrap/js/inspinia.js"></script>
    <script src="/resources/bootstrap/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="/resources/bootstrap/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Jvectormap -->
    <script src="/resources/bootstrap/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="/resources/bootstrap/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- Sparkline -->
    <script src="/resources/bootstrap/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="/resources/bootstrap/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="/resources/bootstrap/js/plugins/chartJs/Chart.min.js"></script>

    <script>
        $(document).ready(function() {


            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

            var data1 = [
                { label: "Data 1", data: d1, color: '#17a084'},
                { label: "Data 2", data: d2, color: '#127e68' }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });

            var lineData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "Example dataset",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,1)",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    },
                    {
                        label: "Example dataset",
                        fillColor: "rgba(26,179,148,0.5)",
                        strokeColor: "rgba(26,179,148,0.7)",
                        pointColor: "rgba(26,179,148,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(26,179,148,1)",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    }
                ]
            };

            var lineOptions = {
                scaleShowGridLines: true,
                scaleGridLineColor: "rgba(0,0,0,.05)",
                scaleGridLineWidth: 1,
                bezierCurve: true,
                bezierCurveTension: 0.4,
                pointDot: true,
                pointDotRadius: 4,
                pointDotStrokeWidth: 1,
                pointHitDetectionRadius: 20,
                datasetStroke: true,
                datasetStrokeWidth: 2,
                datasetFill: true,
                responsive: true,
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            var myNewChart = new Chart(ctx).Line(lineData, lineOptions);

        });
    </script>
</body>
</html>
