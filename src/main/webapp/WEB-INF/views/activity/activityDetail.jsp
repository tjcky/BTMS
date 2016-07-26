<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>활동 상세 페이지</title>
    
    <!-- SUMMERNOTE -->
    <script src="/resources/bootstrap/js/plugins/summernote/summernote.min.js"></script>
	<link href="/resources/bootstrap/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
</head>

<body>
    <script>
        $(document).ready(function(){

            $('.summernote').summernote();
            
            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });

       });
       var edit = function() {
            $('.click2edit').summernote({focus: true});
       };
       
       var save = function() {
            var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
            $('.click2edit').destroy();
       };

       function simpleLoad(btn, state) {
           if (state) {
               btn.children().addClass('fa-spin');
               btn.contents().last().replaceWith(" Loading");
           } else {
               setTimeout(function () {
                   btn.children().removeClass('fa-spin');
                   btn.contents().last().replaceWith(" Refresh");
               }, 2000);
           }
       }
    </script>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>네이버 뮤직 2016년 7월 2주차 정기배포 테스트건 </h2>
            <ol class="breadcrumb">
                <li>
                    <a href="index.html">네이버 뮤직</a>
                </li>
                <li>
                    <a>테스트 활동</a>
                </li>
                <li class="active">
                    <strong>활동 상세</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
    </div>
	<div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
			<div class="col-lg-8">
				<div class="row">
	                <div class="ibox">	                
	                	<div class="ibox-title">
	                		<div style="margin-left:15px">
	                        	<h5>항목</h5>
	                        	<div class="ibox-tools">		                            		                            
					                <a class="collapse-link">
					                    <i class="fa fa-chevron-up"></i>
					                </a>
					            </div>		                        
	                        </div>
	                    </div>
	                    
	                    <div class="ibox-content">
	                    	<div class="form-horizontal">
	                            <div class="row">
	                            	<div class="col-lg-6">
	                            		<div class="row">
											<div class="form-group">
												<label class="col-lg-2 control-label">
													중요도
												</label>
												<div class="col-lg-7">
													<p class="form-control-static">Major</p>
												</div>
				                            </div>
											<div class="form-group">
												<label class="col-lg-2 control-label">
													플랫폼
												</label>
												<div class="col-lg-8">
													<p class="form-control-static">WEB, iOS, Android</p>
												</div>
				                            </div>
											<div class="form-group">
												<label class="col-lg-2 control-label">
													상태
												</label>
												<div class="col-lg-8">
													<p class="form-control-static">진행중</p>
												</div>
				                            </div>
			                        	</div>    
		                            </div>
	                            	<div class="col-lg-6">
	                            		<div class="row">
											<div class="form-group">
												<label class="col-lg-3 control-label">
													배포 구분
												</label>
												<div class="col-lg-9">
													<p class="form-control-static">정기</p>
												</div>
				                            </div>
											<div class="form-group">
												<label class="col-lg-3 control-label">
													테스트 환경
												</label>
												<div class="col-lg-9">
													<p class="form-control-static">IE 11 외 4개</p>
												</div>
				                            </div>												
			                        	</div>    
		                            </div>
	                            </div>
                            </div>
	                    </div>
	            	</div>
	            	
	                <div class="ibox">
	                	<div class="ibox-title">
	                        <h5>테스트 현황</h5>
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
	                    	<div class="m-b-lg">
	                            <div class="m-t-md">	                                
		                            <table class="table table-bordered">
		                                <thead>
			                                <tr>
			                                	<th>TESTER</th>
			                                    <th>환경\결과</th>
			                                    <th>성공(P)</th>
			                                    <th>실패(F)</th>
			                                    <th>블록(B)</th>
			                                    <th>수행전(NI)</th>
			                                    <th>미수행(NR)</th>
			                                    <th>총합</th>
			                                    <th>진행률</th>
			                                    <th>성공률</th>
			                                </tr>
		                                </thead>
		                                <tbody>
			                                <tr>
			                                	<td>권영</td>
			                                    <td>IE 11</td>
			                                    <td>193</td>
			                                    <td>23</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>298</td>
			                                    <td>95%</td>
			                                    <td>95%</td>
			                                </tr>
			                                <tr>
			                                	<td>권영</td>
			                                    <td>IE 10</td>
			                                    <td>193</td>
			                                    <td>23</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>298</td>
			                                    <td>56%</td>
			                                    <td>95%</td>
			                                </tr>
			                                <tr>
			                                	<td>이동섭</td>
			                                	<td>Chrome</td>				                                    
			                                    <td>193</td>
			                                    <td>23</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>13</td>			                                    
			                                    <td>298</td>
			                                    <td>95%</td>
			                                    <td>95%</td>
			                                </tr>
			                                <tr>
			                                	<td>박성훈</td>
			                                    <td>Safari</td>
			                                    <td>193</td>
			                                    <td>23</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>298</td>
			                                    <td>56%</td>
			                                    <td>95%</td>
			                                </tr>
			                                <tr>
			                                	<td>전평재</td>
			                                	<td>FireFox</td>				                                    
			                                    <td>193</td>
			                                    <td>23</td>
			                                    <td>13</td>
			                                    <td>13</td>
			                                    <td>13</td>			                                    
			                                    <td>298</td>
			                                    <td>95%</td>
			                                    <td>95%</td>
			                                </tr>
		                                </tbody>
		                            </table>									
	                            </div>	
	                        </div>
	                    </div>
	            	</div>
	            	
	                <div class="ibox">
	                	<div class="row">
	                		<div class="col-lg-12">
				                <div class="ibox float-e-margins">
				                    <div class="ibox-title">
				                        <h5>설명</h5>
				                        <div class="ibox-tools">
					                        <button id="edit" class="btn btn-primary btn-xs m-l-sm" onclick="edit()" type="button">Edit</button>
		                            		<button id="save" class="btn btn-primary  btn-xs" onclick="save()" type="button">Save</button>
				                            <a class="collapse-link">
				                                <i class="fa fa-chevron-up"></i>
				                            </a>
				                        </div>
				                    </div>
				                    <div class="ibox-content no-padding">
				
				                        <div class="summernote wrapper p-md">
				                            <h3>뮤직서스 7월 2주</h3>
				                           	오류 2건 외 <strong> 정산로그 관련 BTS</strong> 수정건 테스트 진행				                            
				                            <br/>
				                            <br/>
				                            <ul>
				                                <li>[MUSICOP-1423] 마이뮤직에서 곡 저장 오류</li>
				                                <li>[MUSICOP-1431] 뮤직플레이어에서 재생 오류</li>
				                            </ul>
				                        </div>				
				                    </div>
				                </div>
				        	</div>
			        	</div>
	            	</div>
	            	
	                <div class="ibox">
	                	<div class="ibox-title">
	                        <h5>작업</h5>
			                <div class="ibox-tools">
			                	<a href="" class="btn btn-primary btn-xs">+작업추가</a>
				                <a class="collapse-link">
				                    <i class="fa fa-chevron-up"></i>
				                </a>
				                <a href="#">
				                    <i class="fa fa-rotate-left"></i>
				                </a>
				            </div>
	                    </div>
	                    
	                    <div class="ibox-content">
	                    	<div class="ibox">
			                	<div class="ibox-title">
			                        <h5>뮤직플레이어</h5>			                        
					                <div class="ibox-tools">
			                            <a href="javascript:goToJobExecutionResult()" class="btn btn-primary btn-xs">해당작업 전체결과</a>
			                            <a href="" class="btn btn-primary btn-xs">+환경추가</a>
						                <a class="collapse-link">
						                    <i class="fa fa-chevron-up"></i>
						                </a>
						            </div>
			                    </div>
			                    <div class="ibox-content">
			                    	<div class="m-b-lg">
			                            <div class="m-t-md">
				                            <table class="table table-bordered">
				                                <tbody>
					                                <tr>
					                                    <td>IE 11, IE 10, Chrome</td>
					                                    <td>이선영</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
					                                <tr>
					                                    <td>Safari, FireFox</td>
					                                    <td>권영</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
				                                </tbody>
				                            </table>
			                            </div>	
			                        </div>
			                    </div>
			            	</div>
	                    </div>
	                    <!-- 하나의 작업 -->

	                    <div class="ibox-content">
	                    	<div class="ibox">
			                	<div class="ibox-title">
			                        <h5>마이뮤직</h5>			                        
					                <div class="ibox-tools">
			                            <a href="javascript:goToJobExecutionResult()" class="btn btn-primary btn-xs">해당작업 전체결과</a>
			                            <a href="" class="btn btn-primary btn-xs">+환경추가</a>
						                <a class="collapse-link">
						                    <i class="fa fa-chevron-up"></i>
						                </a>
						            </div>
			                    </div>
			                    <div class="ibox-content">
			                    	<div class="m-b-lg">
			                            <div class="m-t-md">
				                            <table class="table table-bordered">
				                                <tbody>
					                                <tr>
					                                    <td>IE 11, IE 10, Chrome</td>
					                                    <td>이선영</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
					                                <tr>
					                                    <td>Safari, FireFox</td>
					                                    <td>전평재</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
					                                <tr>
					                                    <td>Android 4.x, Android 6.x</td>
					                                    <td>전평재</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
					                                <tr>
					                                    <td>iPhone 6S, iPhone 5S</td>
					                                    <td>조문기</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
				                                </tbody>
				                            </table>
			                            </div>	
			                        </div>
			                    </div>
			            	</div>
	                    </div><!-- 하나의 작업 -->	                    
	                    
	                    <div class="ibox-content">
	                    	<div class="ibox">
			                	<div class="ibox-title">
			                        <h5>정산로그</h5>			                        
					                <div class="ibox-tools">
			                            <a href="javascript:goToJobExecutionResult()" class="btn btn-primary btn-xs">해당작업 전체결과</a>
			                            <a href="" class="btn btn-primary btn-xs">+환경추가</a>
						                <a class="collapse-link">
						                    <i class="fa fa-chevron-up"></i>
						                </a>
						            </div>
			                    </div>
			                    <div class="ibox-content">
			                    	<div class="m-b-lg">
			                            <div class="m-t-md">
				                            <table class="table table-bordered">
				                                <tbody>
					                                <tr>
					                                    <td>IE 11, IE 10, Chrome</td>
					                                    <td>권영</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
					                                <tr>
					                                    <td>Safari, FireFox</td>
					                                    <td>이동섭</td>
					                                    <td>P:213</td>
					                                    <td>F:132</td>
					                                    <td>B:13</td>
					                                    <td>NI:12</td>
					                                    <td>NR:15</td>
					                                    <td>T:294</td>
					                                    <td>95% 진행</td>
					                                    <td><a href="javascript:goToJobExecutionDetail()">상세보기</a></td>
					                                </tr>
				                                </tbody>
				                            </table>
			                            </div>	
			                        </div>
			                    </div>
			            	</div>
	                    </div><!-- 하나의 작업 -->
	            	</div>
            	</div>
        	</div>       

			<div class="col-lg-4">
				<div class="row">
					<div class="col-lg-12">
		                <div class="ibox">
		                	<div class="ibox-title">
		                        <h5>사람</h5>
				                <div class="ibox-tools">
					                <a class="collapse-link">
					                    <i class="fa fa-chevron-up"></i>
					                </a>
					            </div>
		                    </div>
		                    <div class="ibox-content">
		                    	<div class="form-horizontal">
									<div class="form-group">
										<label class="col-lg-3 control-label">
											담당 QA
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">권영</p>
										</div>
		                            </div>
									<div class="form-group">
										<label class="col-lg-3 control-label">
											등록자
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">이동섭</p>
										</div>
		                            </div>
									<div class="form-group">
										<label class="col-lg-3 control-label">
											TESTER
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">이동섭, 권영, 이선영</p>
										</div>
		                            </div>
	                            </div>
		                    </div>
		            	</div>
					</div>
	            </div>
	            
				<div class="row">
					<div class="col-lg-12">
		                <div class="ibox">
		                	<div class="ibox-title">
		                        <h5>날짜</h5>
				                <div class="ibox-tools">
					                <a class="collapse-link">
					                    <i class="fa fa-chevron-up"></i>
					                </a>
					            </div>
		                    </div>
		                    <div class="ibox-content">
		                    	<div class="form-horizontal">
									<div class="form-group">
										<label class="col-lg-3 control-label">
											등록일
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">2015-02-25 15:48</p>
										</div>
		                            </div>
									<div class="form-group">
										<label class="col-lg-3 control-label">
											변경일
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">2016-06-01 11:53</p>
										</div>
		                            </div>
									<div class="form-group">
										<label class="col-lg-3 control-label">
											테스트 기간
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">2015-06-25 ~ 2015-07-01</p>
										</div>
		                            </div>
									<div class="form-group">
										<label class="col-lg-3 control-label">
											완료 예정일
										</label>
										<div class="col-lg-9">
											<p class="form-control-static">2015-07-02</p>
										</div>
		                            </div>
	                            </div>
		                    </div>
		            	</div>
					</div>
	            </div>
	            
	            <div class="row">
	            	<div class="col-lg-12">
						<div class="ibox">
		                	<div class="ibox-title">
		                        <h5>활동</h5>
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
	                            <div class="row m-t-sm">
	                                <div class="col-lg-12">
		                                <div class="panel blank-panel">
			                                <div class="panel-heading">
			                                    <div class="panel-options">
			                                        <ul class="nav nav-tabs">
			                                            <li class="active"><a href="#tab-1" data-toggle="tab">댓글</a></li>
			                                            <li class=""><a href="#tab-2" data-toggle="tab">작업 기록</a></li>
			                                        </ul>
			                                    </div>
			                                </div>
		
			                                <div class="panel-body">			
				                                <div class="tab-content">
					                                <div class="tab-pane active" id="tab-1">
					                                    <div class="feed-activity-list">
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">2h ago</small>
					                                                <strong>권영</strong> 님이 댓글을 추가했습니다.<br>
					                                                <small class="text-muted">Today 2:10 pm - 12.06.2014</small>
					                                                <div class="well">
					                                                	테스트 완료되시면 메신저로 메세지좀 남겨주세요.
					                                                </div>
					                                            </div>
					                                        </div>
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">3h ago</small>
					                                                <strong>이동섭</strong> 님이 댓글을 수정하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	뮤직 플레이어에서 TC 몇 개가 누락된 부분이 있어서 수정해 뒀어요.
					                                                </div>
					                                            </div>
					                                        </div>	                                        
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">14h ago</small>
					                                                <strong>김정희</strong> 님이 댓글을 추가하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	저한테 할당된 작업이 보이지 않아요. 추가 부탁드려요
					                                                </div>
					                                            </div>
					                                        </div>
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">26h ago</small>
					                                                <strong>이선영</strong> 님이 댓글을 수정하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	안해
					                                                </div>
					                                            </div>
					                                        </div>
					                                    </div>		
					                                </div>
					                                
					                                <div class="tab-pane" id="tab-2">		
					                                    <table class="table table-striped">
					                                        <thead>
						                                        <tr>
						                                            <th>사람</th>
						                                            <th>구분</th>
						                                            <th>시간</th>
						                                            <th>내용</th>
						                                        </tr>
						                                    </thead>
						                                    <tbody>
						                                        <tr>
						                                            <td>
																		권영
						                                            </td>
						                                            <td>
																		TC 작성
						                                            </td>
						                                            <td>
						                                                4 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [뮤직플레이어] 템플릿 142 개
							                                            </p>
						                                            </td>			
						                                        </tr>
						                                        <tr>
						                                            <td>
																		이동섭
						                                            </td>
						                                            <td>
																		TC 수행
						                                            </td>
						                                            <td>
						                                                6.5 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [마이뮤직] 242 개 
							                                            </p>
						                                            </td>			
						                                        </tr>
						                                        <tr>
						                                            <td>
																		이선영
						                                            </td>
						                                            <td>
																		TC 수행
						                                            </td>
						                                            <td>
						                                                0.5 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [뮤직플레이어] 2 개 
							                                            </p>
						                                            </td>		
						                                        </tr>
					                                        </tbody>
					                                    </table>					
					                                </div>
				                                </div>			
			                                </div>		
		                                </div>
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