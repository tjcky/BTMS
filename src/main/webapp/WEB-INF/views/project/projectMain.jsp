<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>BTMS</title>
	<script type="text/javascript">
		jQuery(function() {	
 			jQuery("#mainProjectAddressId").val(jQuery("#projectAddressId").val());
		});
		
		function getProjectActivityByPage(page) {
			jQuery("#activityTable tbody tr").remove();
			jQuery("#pageMaker").empty();
			jQuery("#delay_example").css("display", "");
			
			jQuery.ajax({
				url		: "/project/activityList?projectId=" + jQuery("#projectAddressId").val() + "&page=" + page,
				type	: "GET",
				dataType: "text",
				success	: function(req) {
					jQuery("#delay_example").css("display", "none");
					drawActivityList(req);
					drawActivityPageMaker(req);
				}
			});
		}
		
		function drawActivityList(req) {
			var obj = JSON.parse(req);
			var activity = obj.activityList;
			
			for(var index = 0; index < activity.length; index++) {	
				var data = "<tr><td class='text-center'>"+ activity[index].sequence +"</td><td class='text-center'>"+ activity[index].title +"</td><td class='text-center'>"+ activity[index].allotmentedQa +"</td><td class='text-center'>"+ activity[index].status +"</td><td class='text-center'>"+ activity[index].representEnviromentName +"</td><td class='text-center'>"+ activity[index].createDate +"</td></tr>";
				
				jQuery("#activityTable tbody:last").append(data);
			}	
		}
		
		function drawActivityPageMaker(req) {
			var obj = JSON.parse(req);
			var pageMaker = obj.pageMaker;
			
			var data = "<ul class='pagination pull-right'>";
			
			if (pageMaker.previous == true) {
				data += "<li><a onclick='getProjectActivityByPage(" + (pageMaker.startPage - 1) + ")'><span class='glyphicon-chevron-left'>PREV</span></a></li>";
			}
			
			for (var index = pageMaker.startPage; index <= pageMaker.endPage; index++) {
				data += "<li><a onclick='getProjectActivityByPage(" + index + ")'>" + index + "</a></li>";
			}
			
			if (pageMaker.next == true) {
				data += "<li><a onclick='getProjectActivityByPage(" + (pageMaker.endPage +1) + ")'><span class='glyphicon-chevron-right'>NEXT</span></a></li>";
			}
			
			data += "</ul>";
			
			jQuery("#pageMaker").append(data);
			
		}
	</script>
</head>

<body>
	<div id="hiddenArea">
		<input type="hidden" id="projectAddressId" value="${projectInfomation.projectAddressId }"/>
	</div>
	<div class="row wrapper border-bottom white-bg page-heading">
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
				            <div class="table-responsive" id="pageTest">
				                <table class="table table-striped" id="activityTable">
				                    <thead>
					                    <tr>
					                        <th class="text-center">#</th>
					                        <th class="text-center">제목 </th>
					                        <th class="text-center">QA </th>
					                        <th class="text-center">상태 </th>
					                        <th class="text-center">환경 </th>
					                        <th class="text-center">등록일 </th>
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
						                    			<td class="text-center">${projectActivity.sequence }</td>
						                    			<td class="text-center">${projectActivity.title }</td>
						                    			<td class="text-center">${projectActivity.allotmentedQa }</td>
						                    			<td class="text-center">${projectActivity.status }</td>
						                    			<td class="text-center">${projectActivity.representEnviromentName } 포함 ${projectActivity.enviromentCount }개</td>
						                    			<td class="text-center">${projectActivity.createDate }</td>
						                    		</tr>
						                    	</c:forEach>
					                    	</c:otherwise>
				                    	</c:choose>
				                    </tbody>
				                </table>
				                <div class="spiner-example" id="delay_example" style="display:none">
	                                <div class="sk-spinner sk-spinner-circle">
	                                    <div class="sk-circle1 sk-circle"></div>
	                                    <div class="sk-circle2 sk-circle"></div>
	                                    <div class="sk-circle3 sk-circle"></div>
	                                    <div class="sk-circle4 sk-circle"></div>
	                                    <div class="sk-circle5 sk-circle"></div>
	                                    <div class="sk-circle6 sk-circle"></div>
	                                    <div class="sk-circle7 sk-circle"></div>
	                                    <div class="sk-circle8 sk-circle"></div>
	                                    <div class="sk-circle9 sk-circle"></div>
	                                    <div class="sk-circle10 sk-circle"></div>
	                                    <div class="sk-circle11 sk-circle"></div>
	                                    <div class="sk-circle12 sk-circle"></div>
	                                </div>
	                            </div>
								<div id="pageMaker">
									<ul class="pagination pull-right">
										<c:if test="${pageMaker.previous }">
											<li><a onclick="getProjectActivityByPage(${pageMaker.startPage-1 })"><span class="glyphicon-chevron-left">PREV</span></a></li>											  
										</c:if>
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="index">
											<li><a onclick="getProjectActivityByPage(${index})">${index}</a></li>
										</c:forEach>
										<c:if test="${pageMaker.next }">
										  	<li><a onclick="getProjectActivityByPage(${pageMaker.endPage+1 })"><span class="glyphicon-chevron-right">NEXT</span></a></li>											  
										</c:if>  	
									</ul>
								</div>
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
				                        <th class="text-center">#</th>
				                        <th class="text-center">템플릿 명 </th>
				                        <th class="text-center">버전 명 </th>
				                        <th class="text-center">작성자</th>
				                    </tr>
				                    </thead>
				                    <tbody>
				                    <tr>
				                        <td class="text-center">8</td>
				                        <td>뮤직플레이어</td>
				                        <td class="text-center">2016년 6월 2주</td>
				                        <td class="text-center">조문기</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">7</td>
				                        <td>뮤직플레이어</td>
				                        <td class="text-center">2016년 6월 1주</td>
				                        <td class="text-center">김경연</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">6</td>
				                        <td>마이뮤직</td>
				                        <td class="text-center">2016년 6월 2주</td>
				                        <td class="text-center">박성훈</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">5</td>
				                        <td>마이뮤직</td>
				                        <td class="text-center">2016년 6월 1주</td>
				                        <td class="text-center">권영</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">4</td>
				                        <td>뮤직플레이어</td>
				                        <td class="text-center">2016년 5월 3주</td>
				                        <td class="text-center">이동섭</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">3</td>
				                        <td>뮤직플레이어</td>
				                        <td class="text-center">2016년 5월 2주</td>
				                        <td class="text-center">이선영</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">2</td>
				                        <td>뮤지션 리그</td>
				                        <td class="text-center">2016년 5월 1주</td>
				                        <td class="text-center">전평재</td>
				                    </tr>
				                    <tr>
				                        <td class="text-center">1</td>
				                        <td>뮤지션 리그</td>
				                        <td class="text-center">2016년 4월 1주</td>
				                        <td class="text-center">권영</td>
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
			                        <th class="text-center">#</th>
			                        <th class="text-center">이름 </th>
			                        <th class="text-center">역할 </th>
			                        <th class="text-center">등록자</th>					                        
			                        <th class="text-center">진행중 활동 수 </th>
			                    </tr>
			                    </thead>
			                    <tbody>
			                    <tr>
			                        <td class="text-center">3</td>
			                        <td class="text-center">권영</td>
			                        <td class="text-center">QA</td>
			                        <td class="text-center">권영</td>					                        
			                        <td class="text-center">5</td>
			                    </tr>
			                    <tr>
			                        <td class="text-center">2</td>
			                        <td class="text-center">이동섭</td>
			                        <td class="text-center">TE</td>
			                        <td class="text-center">권영</td>
			                        <td class="text-center">2</td>
			                    </tr>
			                    <tr>
			                        <td class="text-center">1</td>
			                        <td class="text-center">전평재</td>
			                        <td class="text-center">TE</td>
			                        <td class="text-center">권영</td>
			                        <td class="text-center">10</td>
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
