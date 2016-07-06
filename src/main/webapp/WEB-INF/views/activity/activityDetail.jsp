<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<head>

<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="/resources/javascript/activity/activity.js"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/replyCss/reply.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function() {
    $('[id^=detail-]').hide();
    $('.toggle').click(function() {
        $input = $( this );
        $target = $('#'+$input.attr('data-toggle'));
        $target.slideToggle();
    });
});
</script>

</head>
<body>
	<div class="container">
			<form role="form" id="contact-form">
				<div class="row">
		     		<div class="col-md-12">
			       		<label for="activityTitle" class="control-label col-md-12">			       		
			       			<span class="col-md-1" style="width:82.5px;">활동명</span>     				
		     				<input type="text" style="width:1026px;" name="activityTitle" autocomplete="off" id="activityTitle" value="${activityModel.activityTitle}"/>
			       		</label>
			       	</div>
				</div>
		        <div class="row">
			        <div class="col-md-6">
		       			<label for="activityStatus" class="control-label col-md-6">
		       				<span class="col-md-4">상태</span>
		                	<input type="email" class="col-md-6" name="activityStatus" autocomplete="off" id="activityStatus" value="${activityModel.activityStatus}" />
		                </label>
		                <label for="activityCreateDate" class="control-label col-md-6">
		       				<span class="col-md-4">작성일</span>
		                	<input type="email" class="col-md-8" name="activityCreateDate" autocomplete="off" id="activityCreateDate" value="${activityModel.createDate}" />
		                </label>
			       	</div>
		       	</div>
		       	<div class="row">
			       	<div class="col-md-6">
		       			<label for="activityCreator" class="control-label col-md-6">
		       				<span class="col-md-4">작성자</span>
		                	<input type="email" class="col-md-6" name="activityCreator" autocomplete="off" id="activityCreator" value="${activityModel.creatorName}" />
		                </label>
		                <label for="activityModifiedDate" class="control-label col-md-6">
		       				<span class="col-md-4">수정일</span>
		                	<input type="email" class="col-md-8" name="activityModifiedDate" autocomplete="off" id="activityModifiedDate" value="${activityModel.modifiedDate}" />
		                </label>
			       	</div>
		       	</div>
		       	<div class="row">
		       		<div class="col-md-12">
			       		<div class="form-group">
			       			<label for="activityStatus" class="control-label col-md-6"><span class="col-md-4">설명</span></label>
				        	<textarea class="form-control textarea" rows="3" name="Message" id="Message" placeholder="Message" > ${activityModel.activityContent}</textarea>
				       	</div>
			       	</div>
		         </div>
		         <div class="row">
			         <div class="col-md-12">
					 	<button type="submit" class="btn main-btn pull-right">저장</button>
				     </div>
		       	 </div>
	    	</form>
		</div>
		
		<div class="container">
	<div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">체크리스트 목록</h3>
        </div>   
        <ul class="list-group">
            <li class="list-group-item">
                <div class="row toggle" id="dropdown-detail-1" data-toggle="detail-1">
                    <div class="col-xs-10">
                    	<span>뮤직플레이어 TC</span>
                    </div>
                    <div class="col-xs-2"><i class="fa fa-chevron-down pull-right"></i></div>
                </div>
                <div id="detail-1">
                    <hr></hr>
                    <div class="container">
                        <div class="fluid-row">
                            <div class="col-xs-4">
                            	<span>IE 10 / IE 11 / Chrome</span>                               
                            </div>
                            <div class="col-xs-2">
                                <span>권영</span>
                            </div>
                            <div class="col-xs-2">
                               	<a href="javascript:openJobDetail()"><span>진행중(45%)</span></a>
                            </div>
                            <div class="col-xs-4">
                               	<a href="javascript:openJobDetail()"><span>Total:243 / Pass:112 / Fail:12 / Block:2</span></a>
                            </div>
                            <div class="col-xs-4">
                               <span>FireFox / Safari</span>
                            </div>
                            <div class="col-xs-2">
								<span>전평재</span>
                            </div>
                            <div class="col-xs-2">
                                <a href="javascript:openJobDetail()"><span>진행중(95%)</span></a>
                            </div>
                            <div class="col-xs-4">
                               	<a href="javascript:openJobDetail()"><span>Total:243 / Pass:193 / Fail:32 / Block:2</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row toggle" id="dropdown-detail-2" data-toggle="detail-2">
                    <div class="col-xs-10">
						<span>뮤지션리그 TC</span>
                    </div>
                    <div class="col-xs-2"><i class="fa fa-chevron-down pull-right"></i></div>
                </div>
                <div id="detail-2">
                    <hr></hr>
                    <div class="container">
                        <div class="fluid-row">
                            <div class="col-xs-4">
                            	<span>IE 10 / IE 11 / Chrome</span>                               
                            </div>
                            <div class="col-xs-2">
                                <span>김경연</span>
                            </div>
                            <div class="col-xs-2">
                               	<a href="javascript:openJobDetail()"><span>진행중(45%)</span></a>
                            </div>
                            <div class="col-xs-4">
                               	<a href="javascript:openJobDetail()"><span>Total:243 / Pass:193 / Fail:32 / Block:2</span></a>
                            </div>
                            <div class="col-xs-4">
                               <span>FireFox / Safari</span>
                            </div>
                            <div class="col-xs-2">
								<span>이동섭</span>
                            </div>
                            <div class="col-xs-2">
                                <a href="javascript:openJobDetail()"><span>진행중(95%)</span></a>
                            </div>
                            <div class="col-xs-4">
                               	<a href="javascript:openJobDetail()"><span>Total:243 / Pass:193 / Fail:32 / Block:2</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
	</div>
</div>
    
</body>
</html>