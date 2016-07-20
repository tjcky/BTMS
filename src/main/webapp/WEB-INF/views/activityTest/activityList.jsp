<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
<script src="/resources/javascript/activity/activity.js"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="row">	        
	        <div class="col-md-12">
	        	<h4>활동 목록</h4>
		        <div class="table-responsive">	                
		            <table id="mytable" class="table table-bordred table-striped">
		            	<thead>
		            		<th>번호</th>
		                   	<th>등록자</th>
		                    <th>등록일</th>
		                    <th>상태</th>
		                    <th>활동명</th>		                    
		                    <th>수정</th>
		                    <th>삭제</th>
		                </thead>
		    			<tbody>	
		    				<c:forEach items="${activityList}" var="activityModel">
		    				<tr>
		    					<td>${activityModel.activityNo } </td>
		    					<td>${activityModel.creatorName } </td>
		    					<td>${activityModel.createDate } </td>
		    					<td>${activityModel.activityStatus } </td>
		    					<td><a href="javascript:readActivity('${activityModel.activityNo }')" >${activityModel.activityTitle }</a></td>
		    					<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
							    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>		    					
		    				</tr>
		    				</c:forEach>
		    			</tbody>
		        
					</table>
		
					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>		                
		        </div>	            
		    </div>
		</div>
	</div>	
	
	<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
		    <div class="modal-content">
		    	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
			        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
		      	</div>
		       	<div class="modal-body">
			        <div class="form-group">
			        	<input class="form-control " type="text" placeholder="Mohsin">
			        </div>
			        <div class="form-group">		        
			        	<input class="form-control " type="text" placeholder="Irshad">
			        </div>
			        <div class="form-group">
			        	<textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
			        </div>
		      	</div>
		        <div class="modal-footer ">
		        	<button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
		      	</div>
			</div>
	    <!-- /.modal-content --> 
		</div>
	    <!-- /.modal-dialog --> 
	</div>
	    
	<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
		    <div class="modal-content">
		        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
			        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
				</div>
		        <div class="modal-body">		       
		       		<div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>		       
		      	</div>
		        <div class="modal-footer ">
			        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
		      	</div>
		    </div>
	    <!-- /.modal-content --> 
		</div>
	  <!-- /.modal-dialog --> 
	</div>
</body>
</html>