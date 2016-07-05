<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<head>

<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="/resources/javascript/activity/activity.js"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
</body>
</html>