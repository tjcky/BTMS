<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 버전 템플릿 목록</title>
	<script>
		jQuery(function() {	
			jQuery("#mainProjectAddressId").val(jQuery("#projectAddressId").val());
		});
	</script>
</head>

<body>
	<div id="hiddenArea">
		<input type="hidden" id="projectAddressId" value="${jobVersionList[0].projectAddressId }"/>		
	</div>
	<div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>${jobVersionList[0].projectName} :: ${jobVersionList[0].masterTemplateName} 버전 목록</h2>
            <ol class="breadcrumb">
                <li>
                    <span>${jobVersionList[0].projectName}</span>
                </li>
                <li>
                    <span>작업 템플릿 목록</span>
                </li>
                <li>
                    <a href="/project/${jobVersionList[0].projectAddressId }/jobTemplateAllList"><span>전체 작업 템플릿</span></a>
                </li>
                <li class="active">
                    <strong>${jobVersionList[0].masterTemplateName }</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
    </div>
	<div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
			<div class="col-lg-12">
                <div class="ibox">
                	<div class="ibox-title">
                        <div class="ibox-tools">
                            <a href="" class="btn btn-primary btn-xs">+ 버전추가</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div class="m-b-lg">
                            <div class="m-t-md">
                                <strong>총 ${fn:length(jobVersionList)} 개의 ${jobVersionList[0].masterTemplateName } 작업 템플릿 </strong>
                            </div>
                        </div>
                        
                        <div class="container">
							<div class="row">
						        <div class="col-md-12">
						        	<div class="table-responsive">						                
						            	<table id="mytable" class="table table-bordred table-striped">
						                	<thead>
							                   <th class="text-center">#</th>
							                   <th class="text-center">버전명</th>
							                   <th class="text-center">단위 TC</th>
							                   <th class="text-center">상태</th>
							                   <th class="text-center">작성자</th>
							                   <th class="text-center">작성일</th>
							                   <th class="text-center">수정자</th>
							                   <th class="text-center">수정일</th>
							                   <th class="text-center">EDIT</th>
							                   <th class="text-center">DELETE</th>
						                    </thead>
										    <tbody>									    
											    <c:choose>
											    	<c:when test="${fn:length(jobVersionList) < 1 }">
											    		<td colspan="10" style="text-align: center"><span>작성한 상세 템플릿이 없습니다.</span></td>
											    	</c:when>
											    	<c:otherwise>
											    		<c:forEach var="jobVersion" items="${jobVersionList }">
											    			<tr>
											    				<td class="text-center">${jobVersion.sequence }</td>
											    				<td>${jobVersion.versionTemplateName }</td>
											    				<td class="text-center">${jobVersion.testCaseCount }</td>
											    				<td class="text-center">${jobVersion.jobStatus }</td>
											    				<td class="text-center">${jobVersion.creatorName }</td>
											    				<td class="text-center">${jobVersion.createdDate }</td>
											    				<td class="text-center">${jobVersion.modifyerName }</td>
											    				<td class="text-center">${jobVersion.modifyedDate }</td>
															    <td class="text-center"><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
															    <td class="text-center"><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>										    				
											    			</tr>
											    		</c:forEach>
											    	</c:otherwise>
											    </c:choose>											    									    
										    </tbody>
										</table>
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
                        
                    </div>
            	</div>
        </div>
        </div>
    </div>  
</body>
</html>