<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 템플릿 목록</title>

    <script>
		$(document).on('click', '.panel-heading span.clickable', function(e){
		    var $this = $(this);
			if(!$this.hasClass('panel-collapsed')) {
				$this.parents('.panel').find('.panel-body').slideUp();
				$this.addClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
			} else {
				$this.parents('.panel').find('.panel-body').slideDown();
				$this.removeClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			}
		})

    </script>
    <style type="text/css">
		.panel-heading span {
			font-size: 15px;
		}
    </style>
</head>

<body>
	<div class="row wrapper border-bottom white-bg page-heading">	
        <div class="col-lg-10">
            <h2>네이버 뮤직 :: 전체 작업 템플릿</h2>
            <ol class="breadcrumb">
                <li>
                    <span>네이버 뮤직</span>
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
                                <strong>총 4개의 작업 템플릿</strong>
                            </div>

                        </div>

			<div class="container">
			<c:choose>
				<c:when test="${fn:length(jobTemplateList) < 1 }">
				
				<!-- 없을 경우의 UI 구성 -->
				
				</c:when>
				<c:otherwise>
					<c:forEach var="jobTemplate" items="${jobTemplateList }">
						<c:when test="${jobTemplate.jobMasterUppderCode == '' }">						
							<div class="row">
								<div class="col-md-12">
									<div class="panel panel-success">
										<div class="panel-heading" style="height:50px;">
											<div class="row">
												<div class="col-md-3">													
													<h3 class="pull-left panel-title">${jobTemplate.masterTemplateName }</h3>
												</div>
												<div class="col-md-3">													
													<h3 class="pull-left panel-title">${jobTemplate.creatorName }</h3>
												</div>
												<div class="col-md-6">
													<span class="pull-right clickable">
														<i class="glyphicon glyphicon-chevron-up"></i>
													</span>	
													<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="javascript:goToJobVersionList();" style="margin-left:200px;">전체보기</button>
													<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
												</div>
											</div>
										</div>
										<div class="panel-body">
				                            <table class="table table-bordered">
				                                <thead>
				                                <tr>
				                                    <th>#</th>
				                                    <th>버전명</th>
				                                    <th>단위TC</th>
				                                    <th>상태</th>
				                                    <th>작성자</th>
				                                    <th>작성일</th>
				                                </tr>
				                                </thead>
				                                <tbody>
						</c:when>
						<c:otherwise>
				                     				<td>${jobTemplate.sequence}</td>
				                     				<td>${jobTemplate.versionTemplateName}</td>
				                     				<td>${jobTemplate.testCaseCount}</td>
				                     				<td>${jobTemplate.jobStatus}</td>
				                     				<td>${jobTemplate.creatorName}</td>
				                     				<td>${jobTemplate.createDate}</td>          
						</c:otherwise>
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