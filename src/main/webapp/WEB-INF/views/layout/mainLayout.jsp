<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>       
	    <decorator:head />  
	 
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>
			<decorator:title default="BTMS v 0.1" />          
		</title>
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
		                <li class="active">
		                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">요약</span> <span class="fa arrow"></span></a>
		                    <ul class="nav nav-second-level">
		                        <li><a href="http://localhost:8080/kcmsus">자유게시판<span class="label label-primary pull-right">NEW</span></a></li>
		                        <li class="active"><a href="#">전체 프로젝트 목록</a></li>
		                        <li><a href="#">담당 프로젝트 목록</a></li>
		                    </ul>
		                </li>                
		            </ul>
		        </div>
		    </nav>
		    
		    <div id="page-wrapper" class="gray-bg">
		        <div class="row border-bottom">
			        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
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
					<decorator:body />
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