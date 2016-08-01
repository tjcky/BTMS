<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 템플릿 목록</title>

    <script>
		jQuery(function() {	
			jQuery("#mainProjectAddressId").val(jQuery("#projectAddressId").val());
		});
    
    
		jQuery(document).on('click', '.panel-heading span.clickable', function(e){
		    var $this = jQuery(this);
			if(!$this.hasClass('panel-collapsed')) {
				$this.parents('.panel').find('.panel-body').slideUp();
				$this.addClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
			} else {
				$this.parents('.panel').find('.panel-body').slideDown();
				$this.removeClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			}
		});
		
		function goToJobVersionList(projectAddressId, jobMasterCode){			
			window.location.href = "/project/" + projectAddressId + "/jobTemplateAllList/" + jobMasterCode;
		}

    </script>
    <style type="text/css">
		.panel-heading span {
			font-size: 15px;
		}
    </style>
</head>

<body>
	<div id="hiddenArea">
		<input type="hidden" id="projectAddressId" value="${jobTemplateAllList[0].projectAddressId }"/>		
	</div>
	<div class="row wrapper border-bottom white-bg page-heading">	
        <div class="col-lg-10">
            <h2>${jobTemplateAllList[0].projectName}의 전체 작업 템플릿</h2>
            <ol class="breadcrumb">
                <li>
                    <span>${jobTemplateAllList[0].projectName}</span>
                </li>
                <li>
                    <span>작업 템플릿 목록</span>
                </li>
                <li class="active">
                    <strong>전체 작업 템플릿</strong>
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
                            <a href="" class="btn btn-primary btn-xs">+ 작업추가</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="m-b-lg">
                            <div class="m-t-md">
                                <strong>각 템플릿별 작성일 기준 최신 3개만 표시됩니다.</strong>
                            </div>

                        </div>

						<div class="container">
							<c:choose>
								<c:when test="${fn:length(jobTemplateAllList) < 1 }">
									<!-- TODO : 템플릿 자체가 없는 경우일때 UI 적용 필요 -->
								</c:when>
								<c:otherwise>									
									<c:forEach var="masterTemplate" items="${jobTemplateAllList }">
										<div class="row">
											<div class="col-md-12">
												<div class="panel panel-success">
													<div class="panel-heading" style="height:50px;">
														<div class="row">
															<div class="col-md-3">													
																<h3 class="pull-left panel-title">[ ${masterTemplate.templateGroup } ] ${masterTemplate.masterTemplateName }</h3>
															</div>
															<div class="col-md-3">													
																<h3 class="pull-left panel-title">등록자 - ${masterTemplate.creatorName }</h3>
															</div>
															<div class="col-md-6">
																<span class="pull-right clickable">
																	<i class="glyphicon glyphicon-chevron-up"></i>
																</span>	
																<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="javascript:goToJobVersionList('${masterTemplate.projectAddressId}','${masterTemplate.jobMasterCode }');" style="margin-left:200px;">전체보기</button>
																<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
															</div>
														</div>
													</div>
													<div class="panel-body">													
							                            <table class="table table-bordered">
							                                <thead>
								                                <tr>
								                                    <th class="text-center" style="width:50px">#</th>
								                                    <th class="text-center" style="width:300px">버전명</th>
								                                    <th class="text-center" style="width:100px">단위TC</th>
								                                    <th class="text-center" style="width:100px">상태</th>
								                                    <th class="text-center" style="width:100px">작성자</th>
								                                    <th class="text-center" style="width:150px">작성일</th>
								                                </tr>
							                                </thead>		
															<tbody>
																<c:choose>																	
																	<c:when test="${fn:length(masterTemplate.jobVersionList) < 1 }">
																		<tr>
																			<td colspan="6" style="text-align: center"><span>작성한 상세 템플릿이 없습니다.</span></td>
																		</tr>
																	</c:when>
																	<c:otherwise>
																		<c:forEach var="versionTemplate" items="${masterTemplate.jobVersionList }">
																			<tr>
											                     				<td class="text-center" style="width:50px">${versionTemplate.sequence }</td>
											                     				<td style="width:300px">${versionTemplate.versionTemplateName }</td>
											                     				<td class="text-center" style="width:100px">${versionTemplate.testCaseCount }</td>
											                     				<td class="text-center" style="width:100px">${versionTemplate.jobStatus }</td>
											                     				<td class="text-center" style="width:100px">${versionTemplate.creatorName }</td>
											                     				<td class="text-center" style="width:150px">${versionTemplate.createdDate }</td>
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
									</c:forEach>
								</c:otherwise>								
							</c:choose>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</body>
</html>