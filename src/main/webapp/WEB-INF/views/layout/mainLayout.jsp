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
			<decorator:title default="project Layout Test" />          
		</title>
		<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">
	
	    <!-- Morris -->
	    <link href="/resources/bootstrap/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
	
	    <link href="/resources/bootstrap/css/animate.css" rel="stylesheet">
	    <link href="/resources/bootstrap/css/style.css" rel="stylesheet">
	    <link href="/resources/bootstrap/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
	    
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
	    <script src="/resources/javascript/main.js"></script>
	    <decorator:head />
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
		                        <li class="active"><a href="javascript:goToService()">프로젝트 바로가기<span class="label label-primary pull-right">NEW</span></a></li>
		                    </ul>
		                </li>                
                        <li>
		                    <a href="#"><i class="fa fa-database"></i> <span class="nav-label">프로젝트 관리</span></a>
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
				
				<decorator:body />
				
			</div>
		</div>
 
	</body>
</html>