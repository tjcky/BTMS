<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!DOCTYPE html>
<html>

<head>
    <title>전체 활동 일정</title>
    
    <!-- Custom and plugin javascript -->
	<script src="/resources/bootstrap/js/inspinia.js"></script>
	<script src="/resources/bootstrap/js/plugins/pace/pace.min.js"></script>
	
	<!-- jQuery UI custom -->
	<script src="/resources/bootstrap/js/jquery-ui.custom.min.js"></script>
	
	<!-- iCheck -->
	<script src="/resources/bootstrap/js/plugins/iCheck/icheck.min.js"></script>
	
	<!-- Full Calendar -->
	<script src="/resources/bootstrap/js/plugins/fullcalendar/moment.min.js"></script>
	<script src="/resources/bootstrap/js/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script>
	    $(document).ready(function() {	
	            $('.i-checks').iCheck({
	                checkboxClass: 'icheckbox_square-green',
	                radioClass: 'iradio_square-green'
	            });
	
	        /* initialize the external events
	         -----------------------------------------------------------------*/
	
	
	        $('#external-events div.external-event').each(function() {
	            // store data so the calendar knows to render an event upon drop
	            $(this).data('event', {
	                title: $.trim($(this).text()), // use the element's text as the event title
	                stick: true // maintain when user navigates (see docs on the renderEvent method)
	            });
	
	            // make the event draggable using jQuery UI
	            $(this).draggable({
	                zIndex: 1111999,
	                revert: true,      // will cause the event to go back to its
	                revertDuration: 0  //  original position after the drag
	            });
	
	        });
	
	
	        /* initialize the calendar
	         -----------------------------------------------------------------*/
	        var date = new Date();
	        var d = date.getDate();
	        var m = date.getMonth();
	        var y = date.getFullYear();
	
	        $('#calendar').fullCalendar({
	            header: {
	                left: 'prev,next today',
	                center: 'title',
	                right: 'month,agendaWeek,agendaDay'
	            },
	            editable: true,
	            droppable: true, // this allows things to be dropped onto the calendar
	            drop: function() {
	                // is the "remove after drop" checkbox checked?
	                if ($('#drop-remove').is(':checked')) {
	                    // if so, remove the element from the "Draggable Events" list
	                    $(this).remove();
	                }
	            },
	            events: [
	                {
	                    title: '뮤직 긴급배포',
	                    start: new Date(y, m, 1)
	                },
	                {
	                    title: '뮤지션 리그 3차 Iteration',
	                    start: new Date(y, m, d-5),
	                    end: new Date(y, m, d-2)
	                },
	                {
	                    title: 'Meeting',
	                    start: new Date(y, m, d, 10, 30),
	                    allDay: false
	                },
	                {
	                    title: 'Lunch',
	                    start: new Date(y, m, d, 12, 0),
	                    end: new Date(y, m, d, 14, 0),
	                    allDay: false
	                },
	                {
	                    title: 'DB 패스워드 변경 작업',
	                    start: new Date(y, m, d+1, 19, 0),
	                    end: new Date(y, m, d+1, 22, 30),
	                    allDay: false
	                }
	            ]
	        });
	
	
	    });
	
	</script>
</head>

<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>네이버 뮤직 :: 활동별 일정 </h2>
            <ol class="breadcrumb">
                <li>
                    <span>네이버 뮤직</span>
                </li>
                <li class="active">
                    <strong>테스트 일정</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
    </div>
	<div class="wrapper wrapper-content">
	    <div class="row animated fadeInDown">
	        <div class="col-lg-9">
	            <div class="ibox float-e-margins">
	                <div class="ibox-title">
	                    <h5>네이버 뮤직 활동 목록 </h5>
	                    <div class="ibox-tools">
	                        <a class="collapse-link">
	                            <i class="fa fa-chevron-up"></i>
	                        </a>
	                        <a href="#">
				                <i class="fa fa-rotate-left"></i>
				            </a>
	                    </div>
	                </div>
	                <div class="ibox-content">
	                    <div id="calendar"></div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>

</body>

</html>
