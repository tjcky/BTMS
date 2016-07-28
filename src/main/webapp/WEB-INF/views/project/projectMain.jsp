<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>project Layout Main</title>
	<script type="text/javascript">
		jQuery(function() {	
 			jQuery("#projectMain").attr("href", "/project/" + jQuery("#projectAddressId").val());
		});
	</script>
</head>

<body>
	<div class="row wrapper border-bottom white-bg page-heading">
		<input type="hidden" id="projectAddressId" value="${projectInfomation.projectAddressId }"/>
        <div class="col-lg-10">
            <h2>${projectInfomation.projectName } </h2>
            <ol class="breadcrumb">
                <li>
                    <span>키 : ${projectInfomation.projectAddressId }</span>
                </li>
                <li>
                    <span>담당 : ${projectInfomation.managerName} [${projectInfomation.managerNick }]</span>
                </li>
                <li>
                    <span>분류 : ${projectInfomation.projectCategory }</span>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
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
				                <a href="#">
				                    <i class="fa fa-rotate-left"></i>
				                </a>
				            </div>
				        </div>
				        <div class="ibox-content">			
				            <div class="table-responsive">
				                <table class="table table-striped">
				                    <thead>
				                    <tr>
				                        <th style="text-align: center">#</th>
				                        <th style="text-align: center">제목 </th>
				                        <th style="text-align: center">QA </th>
				                        <th style="text-align: center">상태 </th>
				                        <th style="text-align: center">환경 </th>
				                        <th style="text-align: center">등록일 </th>
				                    </tr>
				                    </thead>
				                    <tbody>
				                    	<c:choose>
				                    		<c:when test="${fn:length(projectActivityList) < 1}">
				                    			<tr>
				                    				<td colspan="6" style="text-align: center"><span>진행중인 활동이 없습니다.</span></td>
				                    			</tr>
				                    		</c:when>
				                    		<c:otherwise>
						                    	<c:forEach var="projectActivity" items="${projectActivityList}">
						                    		<tr>
						                    			<td style="text-align: center">${projectActivity.sequence }</td>
						                    			<td style="text-align: center">${projectActivity.title }</td>
						                    			<td style="text-align: center">${projectActivity.allotmentedQa }</td>
						                    			<td style="text-align: center">${projectActivity.status }</td>
						                    			<td style="text-align: center">${projectActivity.representEnviromentName } 포함 ${projectActivity.enviromentCount }개</td>
						                    			<td style="text-align: center">${projectActivity.createDate }</td>
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
				                <a href="#">
				                    <i class="fa fa-rotate-left"></i>
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
			                <a href="#">
				                    <i class="fa fa-rotate-left"></i>
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
	                             <a href="#">
				                    <i class="fa fa-rotate-left"></i>
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
</body>
</html>
